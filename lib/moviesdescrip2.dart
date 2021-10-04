import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MoviesDescrip2 extends StatelessWidget {
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
            child: Image.asset("assets/p2.jpg", fit: BoxFit.fitWidth)),
        Container(
          width: 220,
          height: 220,
          margin: EdgeInsets.only(top: 170),
          child: Image.asset("assets/2.jpg"),
        ),
        Container(
            margin: EdgeInsets.only(top: 220, left: 220),
            child: Text(
              "La Bisabuela Tiene Alzheimer",
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
                "Cuando nace Olivia, su primera hija, el director comienza a filmarla de manera casi obsesiva, quizás para regalarle algún día la posibilidad de ver sus primeros años de vida. Paralelamente, su abuela materna convive con el Alzheimer desde hace quince años. Ella tampoco recordará ese momento, y sin embargo, Iván organiza un viaje a Guayaquil para que la niña y su bisabuela se conozcan. Pasa desapercibido el encuentro para estas dos mujeres separadas por los años y unidas por la incapacidad de recordar, pero no para el director, quien, a partir de ese momento, se interna en una reflexión sobre su ciudad amnésica y alienada, la historia de vida de su abuela, la construcción de la memoria de su hija. ",
                style: TextStyle(color: Colors.white, fontSize: 15))),
        Container(
            width: 180,
            margin: EdgeInsets.only(top: 730, left: 100),
            decoration: BoxDecoration(
                color: Colors.black87, borderRadius: BorderRadius.circular(50)),
            child: MaterialButton(
              child: Text(
                "VER PELICULA",
                style: TextStyle(color: Colors.red),
              ),
              onPressed: () {
                launch("https://zine.ec/movie/la-bisabuela-tiene-alzheimer/");
              },
            ))
      ],
    ));
  }
}
