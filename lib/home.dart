import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:proyecto_final/moviestate.dart';
// import 'package:proyecto_final/navbar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int pg = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Container(
              width: 2340,
              height: 1000,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/fondo.jpg"),
                      fit: BoxFit.cover)),
            ),
          ),
          Container(
              //margin: EdgeInsets.only(top: 110),
              child: ListView(children: [
            SizedBox(
                height: 235.0,
                child: Carousel(
                    dotSize: 8.0,
                    dotSpacing: 25.0,
                    dotColor: Colors.red,
                    indicatorBgPadding: 0.5,
                    dotBgColor: Colors.transparent,
                    dotIncreasedColor: Colors.black,
                    images: [
                      Image.asset("assets/1.jpg", fit: BoxFit.fill),
                      Image.asset("assets/2.jpg", fit: BoxFit.fill),
                      Image.asset("assets/3.jpg", fit: BoxFit.fill),
                      Image.asset("assets/4.jpg", fit: BoxFit.fill),
                      Image.asset("assets/5.jpg", fit: BoxFit.fill),
                      Image.asset("assets/6.jpg", fit: BoxFit.fill)
                    ]))
          ])),
          Container(
            margin: EdgeInsets.only(top: 320, left: 25),
            child: Text("LO MEJOR DE ECUAFLIZ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 30)),
          ),
          Container(
            margin: EdgeInsets.only(top: 430),
            child: MovieState(),
          ),
          // Container(
          //   margin: EdgeInsets.only(top: 700),
          //   child: NavBar(),
          // )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey,
          currentIndex: pg,
          onTap: (index) {
            setState(() {
              pg = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.supervised_user_circle), label: "Perfil"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.keyboard_control), label: "Informacion")
          ]),
    );
  }
}
