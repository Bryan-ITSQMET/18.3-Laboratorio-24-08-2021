import 'package:flutter/material.dart';
import 'home.dart';

// BARRA DE NAVEGACION
class NavBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NavBar();
  }
}

class _NavBar extends State {
  int indexP = 0;
  final List<Widget> pantallas = [Home()];

  void onTapped(int index) {
    setState(() {
      indexP = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pantallas[indexP],
      bottomNavigationBar: Theme(
          data: Theme.of(context)
              .copyWith(canvasColor: Colors.black, primaryColor: Colors.red),
          child: BottomNavigationBar(
            onTap: onTapped,
            currentIndex: indexP,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home, color: Colors.white30), label: "Home"),
              BottomNavigationBarItem(
                  icon:
                      Icon(Icons.supervised_user_circle, color: Colors.white30),
                  label: "Perfil"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.keyboard_control, color: Colors.white30),
                  label: "Informacion"),
            ],
          )),
    );
  }
}
