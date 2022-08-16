import 'dart:convert';

import 'package:objectbox/objectbox.dart';



Sprites spritesFromJson(String str) => Sprites.fromJson(json.decode(str));
String spritesToJson(Sprites data) => json.encode(data.toJson());

@Entity()
class Sprites {

  Sprites(
    
    {
    this.id =0,
    required this.backDefault,
    required this.frontDefault,
    required this.backShiny,
    required this.frontShiny,
  });

  @Id()
  int id;
  final String backDefault;
  final String frontDefault;
  final String backShiny;
  final String frontShiny;    


    Sprites copyWith({
        String? backDefault,        
        String? backShiny,        
        String? frontDefault,        
        String? frontShiny,        
    }) => 
    Sprites(
        backDefault: backDefault ?? this.backDefault,
        backShiny: backShiny ?? this.backShiny,
        frontDefault: frontDefault ?? this.frontDefault,
        frontShiny: frontShiny ?? this.frontShiny,
    
    );

    factory Sprites.fromJson(Map<String, dynamic> json) => Sprites(
      backDefault: json["back_default"],        
      backShiny: json["back_shiny"],        
      frontDefault: json["front_default"],        
      frontShiny: json["front_shiny"],
        
    );

    Map<String, dynamic> toJson() => {
      "back_default": backDefault,        
      "back_shiny": backShiny,        
      "front_default": frontDefault,       
      "front_shiny": frontShiny,        
    };
  
}

