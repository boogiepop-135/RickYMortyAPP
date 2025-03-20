import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/character_provider.dart';
import 'detail_screen.dart';

/// Pantalla principal que muestra una lista de personajes de Rick and Morty.
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    // Llamamos a fetchCharacters después de que el primer frame se haya renderizado
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<CharacterProvider>(context, listen: false).fetchCharacters();
    });
  }

  @override
  Widget build(BuildContext context) {
    final characterProvider = Provider.of<CharacterProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Rick and Morty Characters'),
        backgroundColor: Colors.blueAccent,
        actions: [
          // Botón de actualización para recargar los datos
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
              Provider.of<CharacterProvider>(
                context,
                listen: false,
              ).fetchCharacters();
            },
            tooltip: 'Recargar personajes',
          ),
        ],
      ),
      body:
          characterProvider.isLoading
              ? Center(child: CircularProgressIndicator())
              : characterProvider.errorMessage != null
              ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      characterProvider.errorMessage!,
                      style: TextStyle(fontSize: 16, color: Colors.red),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        characterProvider.fetchCharacters();
                      },
                      child: Text('Reintentar'),
                    ),
                  ],
                ),
              )
              : ListView.builder(
                padding: EdgeInsets.all(8.0),
                itemCount: characterProvider.characters.length,
                itemBuilder: (context, index) {
                  final character = characterProvider.characters[index];
                  return Card(
                    elevation: 4.0,
                    margin: EdgeInsets.symmetric(
                      vertical: 8.0,
                      horizontal: 4.0,
                    ),
                    child: ListTile(
                      leading: Hero(
                        tag:
                            'character-${character.id}', // Tag único para la animación
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            character.image,
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                            errorBuilder:
                                (context, error, stackTrace) =>
                                    Icon(Icons.error),
                          ),
                        ),
                      ),
                      title: Text(
                        character.name,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text('Species: ${character.species}'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => DetailScreen(character: character),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
    );
  }
}
