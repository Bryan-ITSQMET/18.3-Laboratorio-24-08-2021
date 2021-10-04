import 'package:flutter/material.dart';
import 'package:proyecto_final/home.dart';
import 'package:proyecto_final/login.dart';

class SuperClase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [Login(), Home()],
    );
  }
}
