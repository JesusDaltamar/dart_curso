  final Map <String, dynamic> pokemon = {
    "name":"ditto",
    "hp":"100",
    "isAliva": true,
    "abilities":["impostor"],
    "sprites": {
                  1: "Ditto/vivo.png",
                  2: "Ditto/muerto.png",
                }
  };
  
  print(pokemon);
  print("El nombre del pokemon es: ${pokemon["name"]}");
  print("las habilidades del pokemon son: ${ pokemon["sprites"] }");
  
  
 print("ganador: ${ pokemon["sprites"][1]}");
 print("vencido: ${ pokemon["sprites"][2]}");
}