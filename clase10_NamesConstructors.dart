void main(){
  
  final Map<String,dynamic> rawJson = {
    "name" : "tony Stark",
    "power" : "Money",
    "isAlive":true
  };
  
  
final ironman = Hero.fromJson (rawJson);
//    isAlive: false,
//    power: "money",
//    name: "TonyStark"
 
  print (ironman);
  print(ironman.toString());

  
}

class Hero{
  String name;
  String power;
  bool isAlive;
  
  Hero({
    required this.name,
    required this.power,
    required this.isAlive
  });
  
  Hero.fromJson(Map<String, dynamic> json)
    :name = json ["name"]?? "No se encuentra el nombre",
    power = json ["power"]?? "No se encuentra el poder",
    isAlive = json ["isAlive"]?? "No se encuentra el estado de vivo o muerto";
  
  @override
  String toString(){
      return "$name, $power,esta vivio?: ${isAlive ? "Vivo":"Muerto"}";
  }
  
}