//FUTURE, ASYN y AWAIT

void main() async {
  print("Inicio del programa");

  
  // catch permite capturar el error (err) solo depsues de intentar la ejecucion que este dentro del try
  
  try{
    
      final value = await httpGet("enlace a pagina");
      print (value); 
    
  } catch (err){
    print ("tenemos un error: $err");
  }
  

  print("fin del programa");
}


//forma sensilla de hacer un future implementando de una vez ASYN y AWAIT para crearlo como funcion asincrona y que me permita esperar una respúesta

Future<String> httpGet(String url) async {
  
  await Future.delayed(const Duration(seconds: 2));
  
  throw "Error en la peticion";
  
  //return "Se recibio repuesta de la peticion HTTP"; 
  
}
