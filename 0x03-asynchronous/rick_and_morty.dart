import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> printRmCharacters() async {
  try {
    Uri url = Uri.parse("https://rickandmortyapi.com/api/character");
    final response = await http.get(url);
    final data = json.decode(response.body);
    final characters = data['results'];
    for (final ch in characters){
      print(ch['name']);
    }
  } catch(err){
    throw 'error caught: $err';
  }
}