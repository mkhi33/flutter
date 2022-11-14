void main () {
  final wolverine  = new Heroe('Logan', 'Regeneración');
  
  print(wolverine);

}

class Heroe {
  String nombre;
  String poder;
  
  Heroe( this.nombre, this.poder );
  
  @override
  String toString() {
    return "Nombre: ${this.nombre}, Poder: ${this.poder}";
  }
}

