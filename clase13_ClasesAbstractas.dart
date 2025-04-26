//CALSES ABSTRACTAS
void main(){
  //final windPlant = EnergyPalnt();
}

enum PlantType {nuclear, wind, water}



//definimos la clase abstracta, con variable tipo double y variable tipo PlantType, la variable PlantType defini previamente que solo podia ser nuclear,aire o agua

abstract class EnergyPlant {
  
  double energyLeft;
  PlantType type;   //nuclear,wind,water
  
 // Creo ademas un constructor para asegurarme que los dos atributos son requeridos
  EnergyPlant ({required this.energyLeft, 
                required this.type
                });
  
  
  // Como EnergyPlant es calse abstracta puedo implementar metodos sin implementacion, en este caso creo el metodo ConsumeEnergy que recibe un valor tipo double llamado amoint, pero no defino que hace con ese dato ni que entrega, solo que debe existir ese metodo si creo esta clase
  
  void consumeEnergy(double amount); 
  
  
}