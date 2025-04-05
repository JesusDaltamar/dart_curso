void main (){
  
  final String pokemon = "ditto";
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilities = ["impostor"];
  final sprites = <String>["dito/vivo.png","dito/muerto.png"];
  
  print("""
  $pokemon
  $hp
  $isAlive
  $abilities
  $sprites
  """);
}