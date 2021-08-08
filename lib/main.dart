import 'package:flutter/material.dart';
import 'package:movie_app/homepage.dart';
import 'package:movie_app/network.dart';
// ignore: unused_element
List _data = [] ;
void main() async {
  
_data = await getMovies();
// print(_data);
//  print(_data[1]['original_title']);
   
  
runApp(MaterialApp(
  home: HomePage(),
));


}
// Future<Widget> build(BuildContext context) async {
// return FutureBuilder(builder: (context,snapshot){
//   if (snapshot.hasData)
//   {
//     return Center(child:CircularProgressIndicator());
//   }
//   return Column(
//     children: [

//     ],
//   );
// });
// }



