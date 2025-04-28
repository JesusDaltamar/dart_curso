//FUTURE, TRY _ CATCH_ ON _ FINALLY

void main() async {
  print("Inicio del programa");

  
  // catch permite capturar el error (err) solo depsues de intentar la ejecucion que este dentro del try
  
  try{
    
      final value = await httpGet("enlace a pagina");
      print ("EXITO: $value"); 
    
  } on Exception catch (err) {
    print ("Tenemos una Excepcion: $err");
    
  }catch (err){
    print ("Opps algo terrible paso: $err");
    
  }finally {
    print ("Fin del try y catch");
  }
  

  print("fin del programa");
}


//forma sensilla de hacer un future implementando de una vez ASYN y AWAIT para crearlo como funcion asincrona y que me permita esperar una respúesta

Future<String> httpGet(String url) async {
  
  await Future.delayed(const Duration(seconds: 2));
  
  throw Exception ("No hay parametro en el URL");
  //throw "Error en la peticion";
  //return "Se recibio repuesta de la peticion HTTP"; 
  
}