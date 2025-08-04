import 'dart:convert';
import 'package:http/http.dart' as http;

void main(List<String> arguments) async {
  await getData();
  print('Fin del main');
} 

Future getData() async {
  var api_key = 'e4d9f009da5bddf080473f0548d557ae';
  String city = 'La Ceiba';
  var url = Uri.parse(
      'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$api_key'); 
  var res = await http.get(url);
  if (res.statusCode == 200) {
    var jsonData = res.body;

final parsedJson = jsonDecode(jsonData);
  print(parsedJson);
  print('-----------------------------------');
  print('El Clima');
  print(parsedJson['main']['temp'] - 273);
  print(parsedJson['weather'][0]['description']);
  print(parsedJson['name']);
  print('Fin de la funcion');
  }else {
    print('Request failed with status: ${res.statusCode}');
  }
}