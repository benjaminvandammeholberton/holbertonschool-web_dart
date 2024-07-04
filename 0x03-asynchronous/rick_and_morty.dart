import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> printRmCharacters() async {
  try {
    Uri url = Uri.parse("https://rickandmortyapi.com/api/character");
    var response = await http.get(url);
    var data = json.decode(response.body);
    var characters = data['results'];
    for (final ch in characters){
      print(ch['name']);
    }
  } catch(err){
    throw 'error caught: $err';
  }
}