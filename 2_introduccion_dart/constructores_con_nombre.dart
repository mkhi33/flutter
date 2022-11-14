void main () {
  
  
  final rawJSON = {
    'nombre': 'Tony Stark',
    'poder': 'Dinero'
  };
  
  
  //final iroman = new Heroe( nombre:rawJSON['nombre'], poder: rawJSON['poder']);
  //print(iroman);
  
  
  final iroman = Heroe.fromJson(rawJSON);
  print(iroman);
  
 // final wolverine  = new Heroe('Logan', 'Regeneración');
  
 // print(wolverine);

}

class Heroe {
  String nombre;
  String poder;
  
  Heroe({ required this.nombre, required this.poder });
  
  Heroe.fromJson( Map<String, String> json ):
    this.nombre = json['nombre']! ,
    this.poder = json['poder'] ?? 'No tiene poder';
  
  
  @override
  String toString() {
    return "Nombre: ${this.nombre}, Poder: ${this.poder}";
  }
}

