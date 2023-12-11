import 'package:http/http.dart' as http;
import 'dart:convert';

printRmCharacters() async {
    try{
        var response = await http.get(Uri.parse('https://rickandmortyapi.com/api/character'));
        var decodedResponse = jsonDecode(response.body);
        var characters = decodedResponse['results'];
        for (var character in characters) {
            print(character['name']);
      }
    }
    catch(e){
        return "error caught: $e";
    }
}
