void main (){
  
  final String pokemon = "ditto";
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilities = ["impostor"];
  final sprites = <String>["dito/vivo.png","dito/muerto.png"];
  
  //dynamic == null     ..... dynamic por defecto es nulo
  dynamic errorMessage = "Mensaje de error";
  errorMessage = true;
  errorMessage = [1,2,3,4,5];
  errorMessage = {1,2,3,4,5};
  errorMessage = ()=> true;
  errorMessage = null;
  
  print("""
  $pokemon
  $hp
  $isAlive
  $abilities
  $sprites
  $errorMessage
  """);
}