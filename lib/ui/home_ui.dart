import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:movie_app/util/network.dart';
class MovieMain extends StatefulWidget {
  @override
  _MovieMainState createState() => _MovieMainState();
}

class _MovieMainState extends State<MovieMain> {
  late Future mObject;
  String _movieName = "Fight Club";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mObject = getMovieName(movieName: _movieName);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(mObject.toString()),
    );
  }

Future getMovieName ({required String movieName}) =>
new Network().moviesModel(movieName: _movieName);
}