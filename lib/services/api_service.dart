import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/character.dart';

class ApiService {
  final String baseUrl = 'https://rickandmortyapi.com/api/character';

  Future<List<Character>> fetchCharacters() async {
    final response = await http.get(Uri.parse(baseUrl));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final List<dynamic> results = data['results'];
      return results.map((json) => Character.fromJson(json)).toList();
    } else {
      throw Exception('Error al cargar los personajes: ${response.statusCode}');
    }
  }
}
