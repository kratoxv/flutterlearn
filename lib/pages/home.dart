// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/drawer.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int day = 10;
    String name = "Welcome to $day days of flutter";

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My First flutter App ",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Container(
          child: Text(" $name"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
