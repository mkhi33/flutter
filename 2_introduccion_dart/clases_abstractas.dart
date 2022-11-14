
void main () {
  
  final perro = new Perro();
  final gato = new Gato();
  //sonidoAnmal( perro );
  sonidoAnmal( gato );
  
  
}

void sonidoAnmal( Animal animal) {
  animal.emitirSonido();
}


abstract class Animal {
  
  
  int? pata;
  Animal();
  
  void emitirSonido();
  
}


class Perro implements Animal {
  
  int? pata;
  void emitirSonido() {
    print("Guaaaauu");
  }
}


class Gato implements Animal {
  int? pata;
  int? cola;
  void emitirSonido() {
    print("Miauuuuu");
  }
}
