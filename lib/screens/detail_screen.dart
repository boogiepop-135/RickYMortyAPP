import 'package:flutter/material.dart';
import '../models/character.dart';

/// Pantalla de detalle que muestra información adicional de un personaje.
class DetailScreen extends StatelessWidget {
  final Character character;

  DetailScreen({required this.character});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(character.name),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Hero(
                  tag:
                      'character-${character.id}', // Tag único para la animación
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.network(
                      character.image,
                      height:
                          MediaQuery.of(context).size.height *
                          0.3, // 30% de la altura de la pantalla
                      fit: BoxFit.cover,
                      errorBuilder:
                          (context, error, stackTrace) =>
                              Icon(Icons.error, size: 100),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Text(
                character.name,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'Species: ${character.species}',
                style: TextStyle(fontSize: 18, color: Colors.grey[800]),
              ),
              SizedBox(height: 8),
              Text(
                'Status: ${character.status}',
                style: TextStyle(fontSize: 18, color: Colors.grey[800]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
