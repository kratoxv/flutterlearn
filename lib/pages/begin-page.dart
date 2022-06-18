import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Center(
          child: Text(
        "Login page",
        style: TextStyle(
          fontSize: 20,
          color: Color.fromARGB(255, 43, 17, 15),
          fontWeight: FontWeight.bold,
        ),
        textScaleFactor: 1.0,
      )),
    );
  }
}
