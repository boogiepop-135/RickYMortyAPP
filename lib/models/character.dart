class Character {
  final int id;
  final String name;
  final String image;
  final String species;
  final String status;

  Character({
    required this.id,
    required this.name,
    required this.image,
    required this.species,
    required this.status,
  });

  factory Character.fromJson(Map<String, dynamic> json) {
    return Character(
      id: json['id'],
      name: json['name'],
      image: json['image'],
      species: json['species'],
      status: json['status'],
    );
  }
}
