void main() {
  
  final numbers = [1,2,3,4,5,5,5,6,7,8,9,9,10]; 
  
  print ("Lista original $numbers");
  print ("Tamaño lista original ${numbers.length}");
  print ("Posicion/index 0: ${numbers[0]}");
  print ("Primero: ${numbers.first}");
  print ("Posciion/index 12: ${numbers[12]}");
  print ("Ultimo: ${numbers.last}");
  print("Listado al revez: ${numbers.reversed}");
  
  print("__________________________________________");
  
  final reversedNumbers = numbers.reversed;
  print ("El iterable es: $reversedNumbers");
  print ("Devolver la lista del iterable: ${reversedNumbers.toList()}");
  print ("Valores unicos del iterable: ${reversedNumbers.toSet()}");
  print ("eliminando duplicados: ${numbers.toSet().toList()}");
  
  print("_________________________________________");
  
  final numbersMayores5 = numbers.where((num){
    return num > 5; //regresa true
  });
  print("Los numeros mayores que 5 son: $numbersMayores5");
  print("los numeros mayores que 5 sin repetirs: ${numbersMayores5.toSet()}");
  
}