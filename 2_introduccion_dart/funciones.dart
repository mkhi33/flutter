void main () {
  final nombre = "Amilcar";
  saludar(nombre, 'Saludos');
  
  saludar2(mensaje: 'Hola', nombre: 'Amilcar');

}

void saludar ( String nombre, [ String mensaje = "Hi" ] ) {
  print( "$mensaje, $nombre" );
}

void saludar2( {required String nombre, required String mensaje} ) { // Para no obligar el orden de los argumentos
  print("$mensaje, $nombre ");
}
