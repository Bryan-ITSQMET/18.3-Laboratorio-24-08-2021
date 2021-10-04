import 'package:flutter/material.dart';
import 'package:auth_buttons/auth_buttons.dart';
import 'package:proyecto_final/home.dart';

class Login extends StatefulWidget {
  @override
  _Login createState() => _Login();
}

class _Login extends State<Login> {
  final txtUserName = TextEditingController();
  final txtPassword = TextEditingController();
  String userName, password = "";
  void clearComposing() {
    txtUserName.clear();
    txtPassword.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 2340,
          height: 1000,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/fondo.jpg"), fit: BoxFit.cover)),
        ),
        Container(
          margin: EdgeInsets.only(top: 70, left: 70),
          child: Image.asset("assets/ecua.png"),
        ),
        Container(
          margin: EdgeInsets.only(top: 250, left: 30),
          child: Text(
            "Ingresa o Crea",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 270, left: 30, right: 150),
          child: Text("una cuenta para disfrutar de Ecuafliz.",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              )),
        ),
        Container(
          margin: EdgeInsets.only(top: 150, left: 200),
          child: Image.asset(
            "assets/icono.png",
            height: 200,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 380, left: 15, right: 15),
          decoration: BoxDecoration(
              color: Colors.red[900],
              borderRadius: BorderRadiusDirectional.circular(100)),
          child: TextField(
              controller: txtUserName,
              style: TextStyle(fontSize: 18, color: Colors.black),
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                  prefixIcon: Icon(Icons.person, color: Colors.white),
                  labelText: "Usuario ó Correo electronico",
                  labelStyle: TextStyle(fontSize: 18, color: Colors.white))),
        ),
        Container(
          margin: EdgeInsets.only(top: 460, left: 15, right: 15),
          decoration: BoxDecoration(
              color: Colors.red[900],
              borderRadius: BorderRadiusDirectional.circular(100)),
          child: TextField(
              controller: txtPassword,
              obscureText: true,
              style: TextStyle(fontSize: 18, color: Colors.black),
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                  prefixIcon: Icon(Icons.lock, color: Colors.white),
                  labelText: "Contraseña secreta",
                  labelStyle: TextStyle(fontSize: 18, color: Colors.white))),
        ),
        Container(
          margin: EdgeInsets.only(top: 530, left: 40),
          child: Row(
            children: [
              Text("Olvidaste la contraseña ñaño?",
                  style: TextStyle(fontSize: 18, color: Colors.white)),
              TextButton(
                  onPressed: () {},
                  child: Text("Venf",
                      style: TextStyle(fontSize: 18, color: Colors.white)))
            ],
          ),
        ),
        Container(
          width: 180,
          margin: EdgeInsets.only(top: 580, left: 20),
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(50)),
          child: MaterialButton(
            child: Text("Crea una Cuenta"),
            onPressed: () {},
          ),
        ),
        Container(
            width: 180,
            margin: EdgeInsets.only(top: 580, left: 205),
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(50)),
            child: MaterialButton(
              child: Text("Entra"),
              onPressed: () {
                userName = txtUserName.text;
                password = txtPassword.text;
                if (userName.isEmpty || password.isEmpty) {
                  AlertDialog alert = AlertDialog(
                    title: Text('Campos vacios'),
                    content: Text("No puede haber campos vacios"),
                    actions: [
                      MaterialButton(
                        child: Text("OK"),
                        onPressed: () {
                          clearComposing();
                          Navigator.of(context).pop();
                        },
                      )
                    ],
                  );
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return alert;
                      });
                } else {
                  if (userName == "Admin" && password == "admin") {
                    clearComposing();
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  } else {
                    AlertDialog alert = AlertDialog(
                      title: Text('Algo salió mal !'),
                      content:
                          Text("El USUARIO o CONTRASEÑA estan incorrectos"),
                      actions: [
                        MaterialButton(
                          child: Text("OK"),
                          onPressed: () {
                            clearComposing();
                            Navigator.of(context).pop();
                          },
                        )
                      ],
                    );
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return alert;
                        });
                  }
                }
              },
            )),
        Container(
          margin: EdgeInsets.only(top: 740, left: 15, right: 15),
          child: Text(
              "-------------------------O INGRESA CON---------------------",
              style: TextStyle(fontSize: 18, color: Colors.white)),
        ),
        Container(
            margin: EdgeInsets.only(top: 770, left: 75),
            child: GoogleAuthButton(
              onPressed: () {},
              darkMode: true,
            )),
        Container(
            margin: EdgeInsets.only(top: 825, left: 75),
            child: FacebookAuthButton(
              onPressed: () {},
              darkMode: true,
            )),
        Container(
            margin: EdgeInsets.only(top: 880, left: 75),
            child: TwitterAuthButton(
              onPressed: () {},
              darkMode: true,
            )),
        Container(
            margin: EdgeInsets.only(top: 935, left: 75),
            child: AppleAuthButton(
              onPressed: () {},
              darkMode: true,
            ))
      ],
    );
  }
}
