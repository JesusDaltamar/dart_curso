//IMPLEMENTACION DE ClASES
void main(){
  final windPlant = WindPlant(initialEnergy: 100);
  final nuclearPlant = NuclearPlant(energyLeft: 1000);
  
  print(windPlant);
  print ("wind: ${chargePhone(windPlant)}");
  print ("nuclear: ${chargePhone(nuclearPlant)}");
}

double chargePhone (EnergyPlant plant){
  if (plant.energyLeft < 10){
    throw Exception ("falta energia");
  }
  return plant.energyLeft - 10;
}



enum PlantType {nuclear, wind, water}


abstract class EnergyPlant {
  
  double energyLeft;
  final PlantType type;   //nuclear,wind,water
  

  EnergyPlant ({required this.energyLeft, 
                required this.type
                });
  
  
  void consumeEnergy(double amount); 
  
  
}

// extends o implements --- EN ESTA USO EXTENDS
class WindPlant extends EnergyPlant {     
  
  
// primero creo el constructor y le asigno los parametros  
  WindPlant ({required double initialEnergy})
    : super(energyLeft: initialEnergy, type: PlantType.wind);

 @override
  void  consumeEnergy(double amount){
    energyLeft -= amount;
  }
  
}

// extends o implements --- EN ESTA USO IMPLEMENTS
class NuclearPlant implements EnergyPlant {    //con implementacion puedo sobre escribir los metodos, o por ejemplo con extender la nueva clase extiende tooodos los metodos de la super clase, en cambio con implementar, solo los metodos que yo indique y sobreescriba, osea extends es mas general y implements es mas especifico
  
  @override
  double energyLeft;
  final PlantType type = PlantType.nuclear;

  @override
  NuclearPlant({ required this.energyLeft});

  @override
  void  consumeEnergy(double amount){
    energyLeft -= (amount * 0.5);

}
}