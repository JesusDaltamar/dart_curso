void main(){
  
  final wolverin = Hero ("logan","regeneracion");
  
  print(wolverin);
  print(wolverin.name);
  print(wolverin.power);
  
}

class Hero{
  String? name;
  String? power;

  //Inicializacion con constructor:
  //Hero(String pName, String pPower)
    //:name=pName,
     //power=pPower;
  
  
  //inicializacion sin constructor
  Hero (this.name,this.power);
  
  
} 