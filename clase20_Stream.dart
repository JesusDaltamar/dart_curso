void main(){

  
//llamo al Stream emitNumbers y le creo el oyente del valor value, finalmente imprimo dicho valor value
  
  emitNumbers().listen((value){
    print ("stream value: $value");
  });
  
  
}

// creo el Stream indicando que va a ser un stream de numeros enteros y la llamo emitNumbers

Stream<int> emitNumbers(){

// le digo que va a ser un Stream periodico con periodos de duracion 1 segundo y con actualizacion del valor vlue  
  
  return Stream.periodic(const Duration (seconds: 1),(value){
    
// cada ciclo del stram se imprimira el print y se enviara el dato de value a al oyernte
    print ("desde periodic $value");
    return value;
  }).take(5);
  
}