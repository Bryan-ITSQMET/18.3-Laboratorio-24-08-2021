import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MoviesDescrip3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          width: 2340,
          height: 1000,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/fondo.jpg"), fit: BoxFit.cover)),
        ),
        Container(
            width: double.infinity,
            height: 200,
            child: Image.asset("assets/p3.jpg", fit: BoxFit.fitWidth)),
        Container(
          width: 220,
          height: 220,
          margin: EdgeInsets.only(top: 170),
          child: Image.asset("assets/3.jpg"),
        ),
        Container(
            margin: EdgeInsets.only(top: 220, left: 220),
            child: Text(
              "Gafas Amarillas",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30),
            )),
        Container(
            margin: EdgeInsets.only(top: 420, left: 35),
            child: Text("Sinopsis",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 30))),
        Container(
            margin: EdgeInsets.only(top: 460, left: 35),
            child: Text(
                "Es una tragicomedia sobre el fin de la juventud y el inicio de la vida adulta. Julia, una treintañera recién separada y en busca de un cambio de vida, encuentra dos nuevos amigos. Los tres empiezan a vivir una intensa amistad que con los días confunde su dirección hacia un triángulo amoroso en el que se evidencian sus frustraciones y miedos de no saber si lograrán ser quienes soñaron ser cuando eran más jóvenes.",
                style: TextStyle(color: Colors.white, fontSize: 15))),
        Container(
            width: 180,
            margin: EdgeInsets.only(top: 670, left: 100),
            decoration: BoxDecoration(
                color: Colors.black87, borderRadius: BorderRadius.circular(50)),
            child: MaterialButton(
              child: Text(
                "VER PELICULA",
                style: TextStyle(color: Colors.red),
              ),
              onPressed: () {
                launch("https://zine.ec/movie/gafas-amarillas/");
              },
            ))
      ],
    ));
  }
}
