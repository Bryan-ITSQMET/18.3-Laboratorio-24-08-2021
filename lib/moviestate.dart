import 'package:flutter/material.dart';
import 'package:proyecto_final/movies.dart';
import 'package:proyecto_final/moviesdescrip1.dart';
import 'package:proyecto_final/moviesdescrip2.dart';
import 'package:proyecto_final/moviesdescrip3.dart';
import 'package:proyecto_final/moviesdescrip4.dart';

class MovieState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Movies(key, "assets/1.jpg", "Cuando ellos se fueron", () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MoviesDescrip1()));
          }),
          Movies(key, "assets/2.jpg", "La bisabuela tiene Alzheimer", () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MoviesDescrip2()));
          }),
          Movies(key, "assets/3.jpg", "Gafas Amarillas", () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MoviesDescrip3()));
          }),
          Movies(key, "assets/4.jpg", "El Secreto de la Luz", () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MoviesDescrip4()));
          })
        ],
      ),
    );
  }
}
