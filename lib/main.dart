import 'dart:convert';


import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

// ignore: unused_element
List _data = [] ;
void main() async {
   _data = await getMovies();
   print(_data);
  
runApp(MaterialApp(
  home: Movie(),
));

}
class Movie extends StatelessWidget {
  const Movie({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MOVIES",
      style: TextStyle(fontWeight: FontWeight.w900),),
      centerTitle: true,
      ),
      body:ListView.builder(
        itemCount: _data.length,
        itemBuilder: (context,index){
          var feature = _data[index];
          return Card(
            child: ListTile(
              leading: CircleAvatar(child: Text(feature['original_title'][0]),),
              title: Text(feature['original_title']),
              subtitle: Text(feature['release_date']),
              onTap: (){
                _showAlerPage(context,feature['overview']);
              },
            ),
          );
        }) 
      );
      
    
  }
}
void _showAlerPage(BuildContext context, String message) {
    // ignore: unused_local_variable
    var alert = new AlertDialog(
      title: Text('Description'),
      content: Text(message),
      actions: [
        FloatingActionButton(onPressed: (){Navigator.pop(context);},
        
        child:Text('ok') ,)
      ],
    );
    showDialog(context: context, builder:(_)=>alert);
    
  }


Future<List> getMovies() async {
  String apiUrl = "https://api.themoviedb.org/3/movie/popular?api_key=9bfb305d99ed73a1f0e37cf29aa6532a";
  
  http.Response response = await http.get(Uri.parse(apiUrl));
  var movieName = jsonDecode(response.body);
  
  return movieName['results'];
}
