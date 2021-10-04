import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MoviesDescrip1 extends StatelessWidget {
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
            child: Image.asset("assets/p1.jpg", fit: BoxFit.fitWidth)),
        Container(
          width: 220,
          height: 220,
          margin: EdgeInsets.only(top: 170),
          child: Image.asset("assets/1.jpg"),
        ),
        Container(
            margin: EdgeInsets.only(top: 220, left: 220),
            child: Text(
              "Cuando ellos se Fueron",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30),
            )),
        Container(
            margin: EdgeInsets.only(top: 440, left: 35),
            child: Text("Sinopsis",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 30))),
        Container(
            margin: EdgeInsets.only(top: 480, left: 35),
            child: Text(
                "Verónica Haro narra la historia de sus abuelos, quienes nacieron y vivieron en Plazuela, un pequeño pueblo que no consta en el mapa de Ecuador. Desde hace 20 años los abuelos fueron muriendo uno a uno, los hijos migraron, los nietos crecieron y así hoy por hoy Plazuela se ha convertido en un pueblo habitado únicamente por mujeres ancianas, viudas.  Cuando sus abuelos murieron perdió su deseo de volver a Plazuela, pero ahora regresó para retratar la vida de las abuelas que con sus recuerdos, sabiduría y ocurrencias le devuelven el sentido a este espacio que después de ellas desaparecerá.",
                style: TextStyle(color: Colors.white, fontSize: 15))),
        Container(
            width: 180,
            margin: EdgeInsets.only(top: 710, left: 100),
            decoration: BoxDecoration(
                color: Colors.black87, borderRadius: BorderRadius.circular(50)),
            child: MaterialButton(
              child: Text(
                "VER PELICULA",
                style: TextStyle(color: Colors.red),
              ),
              onPressed: () {
                launch("https://zine.ec/movie/cuando-ellos-se-fueron/");
              },
            ))
      ],
    ));
  }
}
