// To parse this JSON data, do
//
//     final pokemon = pokemonFromMap(jsonString);
import 'dart:convert';

import 'package:objectbox/objectbox.dart';

Pokemon pokemonFromMap(String str) => Pokemon.fromMap(json.decode(str));

String pokemonToMap(Pokemon data) => json.encode(data.toMap());
@Entity()
class Pokemon {
    Pokemon({
       required this.id,
       required this.name,
       required this.height,
       required this.weight,
    });

    int id;
    final String name;
    final int height;
    final int weight;

    Pokemon copyWith({
        int? id,
        String? name,
        int? height,
        int? weight,
    }) => 
        Pokemon(
            id: id ?? this.id,
            name: name ?? this.name,
            height: height ?? this.height,
            weight: weight ?? this.weight,
        );

    factory Pokemon.fromMap(Map<String, dynamic> json) => Pokemon(
        id: json["Id"],
        name: json["name"],
        height: json["height"],
        weight: json["weight"],
    );

    Map<String, dynamic> toMap() => {
        "Id": id,
        "name": name,
        "height": height,
        "weight": weight,
    };
 

}
