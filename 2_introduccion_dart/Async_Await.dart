 void main () async {
   print("Antes de la petición");
   
   final data = await httpGet('https://api.nasa.com/aliens');
   print(data);
   
//   httpGet('https://api.nasa.com/aliens').then( (data) {
//     print(data);
//   } );
   
   final nombre = await getNombre('10');
   print(nombre );
   
   print("Fin del programa");
   
 }

Future<String> getNombre ( String id) async {
  return '$id - Amilcar';  
}

Future<String> httpGet( String url) {
  return Future.delayed( Duration( seconds: 3), () {
    return 'Hola mundo 3 segundos';
  });
}
