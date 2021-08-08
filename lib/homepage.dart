import 'package:flutter/material.dart';
import 'package:movie_app/network.dart';
import 'package:movie_app/second_screen.dart';
List _data = [];
Future getData() async {
_data = await getMovies();
  //  print(_data);
  
}
class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: Text("Movies")),
      body:Center(
          child:ListView.builder(
          itemCount: _data.length,
          itemBuilder: (context,index){
          
            var feature = _data[index];
            var title = feature['original_title'];
            print(title);
            return Card(
              child: ListTile(
                leading: CircleAvatar(child: Text(title),
                
                 ),
                 title: Text(title),
                 subtitle: Text(title),
                 trailing: CircleAvatar(child: IconButton(icon:Icon(Icons.more_vert_rounded), 
                 onPressed: () { 
                  Navigator.of(context).push(MaterialPageRoute (builder: (context)=>SecondScreen( index: index)));
                 },
                 )
                 
                 ),
                ),
              );
}),
          
    )
      );
  }
}
   