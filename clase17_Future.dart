//FUTURE

void main() {
  print("Inicio del programa");

  httpGet("enlace a pagina")
      .then((value) {
        print(value);
      })
      .catchError((err) {
        print("Error: $err");
      });

  print("fin del programa");
}

Future<String> httpGet(String url) {
  return Future.delayed(const Duration(seconds: 2), () {
    throw "Error en la ptecicion http";
    //return "Repuesta de la peticion HTTP";
  });
}
