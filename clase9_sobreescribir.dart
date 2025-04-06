void main() {
  final wolverin = Hero(name: "logan", power: "regeneracion");

  print(wolverin);
  print(wolverin.name);
  print(wolverin.power);

  print(wolverin.toString());
}

class Hero {
  String? name;
  String? power;

  //Inicializacion con constructor:
  //Hero(String pName, String pPower)
  //:name=pName,
  //power=pPower;

  //inicializacion sin constructor
  Hero({required this.name, this.power = "sin poder"});

  //sobre esccribiendo un calse existente
  @override
  String toString() {
    return "$name - $power";
  }
}
