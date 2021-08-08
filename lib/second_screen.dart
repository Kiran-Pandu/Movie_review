import 'package:flutter/material.dart';


class SecondScreen extends StatelessWidget   {
  late final dynamic snapshot;
  final index;
  SecondScreen({ this.index,this.snapshot });
  @override
   Widget build(BuildContext context) {
     var feature = snapshot['original_title'];
    return Scaffold(
      appBar: AppBar(title:Text("Description"),
      centerTitle: true),
      body: Column(
        children: <Widget>[
            CircleAvatar(child: Text(feature.toString()),)
        ],
      ),
    );
  }
}
