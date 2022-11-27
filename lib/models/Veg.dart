import 'dart:convert';

class Veg {
  String nom;
  String imageUrl;
  Veg({
    required this.nom,
    required this.imageUrl,
  });

  Veg copyWith({
    String? nom,
    String? imageUrl,
  }) {
    return Veg(
      nom: nom ?? this.nom,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'nom': nom,
      'imageUrl': imageUrl,
    };
  }

  factory Veg.fromMap(dynamic map) {
    return Veg(
      nom: map['nom'] ?? '',
      imageUrl: map['imageUrl'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Veg.fromJson(String source) => Veg.fromMap(json.decode(source));

  @override
  String toString() => 'Veg(nom: $nom, imageUrl: $imageUrl)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Veg && other.nom == nom && other.imageUrl == imageUrl;
  }

  @override
  int get hashCode => nom.hashCode ^ imageUrl.hashCode;
}
