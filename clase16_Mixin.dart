//MIXIN

abstract class Animal {}

//clase mamifero, ave y pez que extienden todas las caracteristicas de la clase animal
abstract class Mamifero extends Animal {}
abstract class Ave extends Animal {}
abstract class Pez extends Animal {}

// Ahora creamos las clases tipo Mixins, estos se declaran con la palabra reservada MIXIN
mixin Volador {
  void volar() => print("Estoy volando");
}

mixin Caminante {
  void caminar() => print("Estoy caminando");
}

mixin Nadador {
  void nadar() => print("Estoy nadando");
}

//creando las clases con Mixins, ver que el MIXIN se llama con la palabra reservada WITH
class Delfin extends Mamifero with Nadador {}
class Murcielago extends Mamifero with Volador, Caminante {}
class Gato extends Mamifero with Caminante {}
class Paloma extends Ave with Volador, Caminante {}
class Pato extends Ave with Volador, Caminante, Nadador {}
class Tiburon extends Pez with Nadador {}
class PezVolador extends Pez with Nadador, Volador {}

//creo mis instancias Flipper, Batman y Namor
void main() {
  final Flipper = Delfin();
  Flipper.nadar();

  final Batman = Murcielago();
  Batman.volar();
  Batman.caminar();

  final Namor = Pato();
  Namor.caminar();
  Namor.nadar();
  Namor.volar();
}