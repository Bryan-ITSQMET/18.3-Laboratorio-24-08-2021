import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MoviesDescrip4 extends StatelessWidget {
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
            child: Image.asset("assets/p4.jpg", fit: BoxFit.fitWidth)),
        Container(
          width: 220,
          height: 220,
          margin: EdgeInsets.only(top: 170),
          child: Image.asset("assets/4.jpg"),
        ),
        Container(
            margin: EdgeInsets.only(top: 220, left: 220),
            child: Text(
              "El secreto de la luz",
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
                "Rolf Blomberg exploró el Ecuador como pocos y creó una obra vasta y emocionante. Arribó en 1934 a estudiar las Islas Galápagos y regresó muchas veces, a filmar, escribir y fotografiar a los pobladores de las ciudades, los Andes y la selva. Este «trotamundos profesional», viajó por muchos otros lugares del mundo, pero fue el Ecuador su centro de operaciones, su hogar. Fue aquí donde formó su familia y aquí donde a pesar de tantos libros y tantas películas, permaneció como un desconocido. Esta película explora al explorador a través de su obra, y también al país retratado por Blomberg. Montada exclusivamente a partir del enorme legado visual de Blomberg, este filme se remonta a otros tiempos e indaga una mirada que, a pesar del pasar de los tiempos, permanece relevante. ",
                style: TextStyle(color: Colors.white, fontSize: 15))),
        Container(
            width: 180,
            margin: EdgeInsets.only(top: 750, left: 100),
            decoration: BoxDecoration(
                color: Colors.black87, borderRadius: BorderRadius.circular(50)),
            child: MaterialButton(
              child: Text(
                "VER PELICULA",
                style: TextStyle(color: Colors.red),
              ),
              onPressed: () {
                launch("https://zine.ec/movie/el-secreto-de-la-luz/");
              },
            ))
      ],
    ));
  }
}
