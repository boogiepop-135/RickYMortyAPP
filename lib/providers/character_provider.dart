import 'package:flutter/material.dart';
import '../models/character.dart';
import '../services/api_service.dart';

class CharacterProvider with ChangeNotifier {
  List<Character> _characters = [];
  bool _isLoading = false;
  String? _errorMessage;

  List<Character> get characters => _characters;
  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;

  final ApiService _apiService = ApiService();

  Future<void> fetchCharacters() async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    try {
      _characters = await _apiService.fetchCharacters();
    } catch (e) {
      _errorMessage = 'Error al cargar los personajes: $e';
      print(_errorMessage);
    }

    _isLoading = false;
    notifyListeners();
  }
}
