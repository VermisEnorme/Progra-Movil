import 'dart:io';

bool esPalindromo(String texto) {
  String textoLimpio = texto
      .toLowerCase()
      .replaceAll(RegExp(r'[^a-z0-9]'), '');

  String textoInvertido = textoLimpio.split('').reversed.join('');
  
  return textoLimpio == textoInvertido;
}



void main() {
  print("Escribe una palabra o frase:");
  String? entrada = stdin.readLineSync();

  if (entrada != null) {
    if (esPalindromo(entrada)) {
      print("Es un palíndromo.");
    } else {
      print("No es un palíndromo.");
    }
  } else {
    print("No ingresaste nada.");
  }
}