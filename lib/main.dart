import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/character_provider.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CharacterProvider(), // Quitamos ..fetchCharacters()
      child: MaterialApp(
        title: 'Carvel Maquinaria App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomeScreen(),
      ),
    );
  }
}
