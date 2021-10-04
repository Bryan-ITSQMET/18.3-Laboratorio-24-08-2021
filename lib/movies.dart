import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Movies extends StatefulWidget {
  final VoidCallback onPressed;
  String rutaImg = "";
  String titulo = "";

  Movies(Key key, this.rutaImg, this.titulo, this.onPressed);

  @override
  State<StatefulWidget> createState() {
    return _Movies();
  }
}

//Clase anidada
class _Movies extends State<Movies> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onTap: widget.onPressed,
          child: Padding(
            padding: EdgeInsets.only(left: 50),
            child: Container(
              height: 130,
              width: 130,
              //margin: EdgeInsets.only(left: 50),
              decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(30),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(widget.rutaImg),
                  )),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 170),
          child: Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              widget.titulo,
              textAlign: TextAlign.center,
              //textDirection: TextDirection.ltr,
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}
