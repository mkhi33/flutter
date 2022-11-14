import 'dart:math' as math;

void main () {
  final cuadrado = new Cuadrado(50);
  
  //print( cuadrado.calculaArea() );
  print( cuadrado.area);
  cuadrado.area = 25;
  
  print(cuadrado.lado);
}

class Cuadrado {
  double lado = 0;
  
  Cuadrado( double lado):
    this.lado = lado;
  
  // Área de un cuadrado = lado * lado
  
  double calculaArea() { 
    return this.lado * this.lado;
  }
  
  
  double get area {
    return this.lado * this.lado;
  }
  
  set area( double valor ) {
    this.lado = math.sqrt(valor);
  }
  

  
  
}
