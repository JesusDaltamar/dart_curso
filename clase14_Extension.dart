//EXTENSION DE CLASES
void main(){
  final windPlant = WindPlant(initialEnergy: 100);
  print(windPlant);
  print ("wind: ${chargePhone(windPlant)}");
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
  PlantType type;   //nuclear,wind,water
  

  EnergyPlant ({required this.energyLeft, 
                required this.type
                });
  
  
  void consumeEnergy(double amount); 
  
  
}

// extends o implements
class WindPlant extends EnergyPlant {      //cuando estoy extendiendo yo heredo todas las caracteristicas de la calse abstracta
  
  
// primero creo el constructor y le asigno los parametros  
  WindPlant ({required double initialEnergy})
    : super(energyLeft: initialEnergy, type: PlantType.wind);

//creo la implementacion del metodo consumeEnergy el cual es obligatorio para todas las calses abstractas
 
 @override
  void  consumeEnergy(double amount){
    energyLeft -= amount;
  }
  
}