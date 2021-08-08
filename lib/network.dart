import 'dart:convert';
import 'package:http/http.dart'as http;

Future<List> getMovies() async {
  String apiUrl = "https://api.themoviedb.org/3/movie/popular?api_key=9bfb305d99ed73a1f0e37cf29aa6532a";
  
  http.Response response = await http.get(Uri.parse(apiUrl));
  var movieName = jsonDecode(response.body);
  // print("URL:${Uri.encodeFull(apiUrl)}");
  
  if (response.statusCode == 200) {
    // print("data:${movieName['results']}");
        return movieName['results'];
  }
  else {
    throw Exception("error getting the data");
  }
 
}