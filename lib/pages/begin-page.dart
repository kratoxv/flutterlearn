// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routs.dart';

// ignore: use_key_in_widget_constructors
class Loginpage extends StatefulWidget {
  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String name = "";
  bool changebutton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Center(
          // ignore: sized_box_for_whitespace

          child: Column(
            children: [
              Image.asset(
                "assets/images/flutter login_image.png",
                fit: BoxFit.cover,
              ),

              // ignore: prefer_const_constructors
              SizedBox(
                height: 20.0,
              ),
              // ignore: prefer_const_constructors
              Text(
                "Welcome (●'◡'●) $name",
                style: TextStyle(
                    color: Color.fromARGB(255, 58, 50, 38),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              // ignore: prefer_const_constructors
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    // ignore: prefer_const_constructors
                    TextField(
                        // ignore: prefer_const_constructors
                        decoration: InputDecoration(
                            hintText: "Enter Username", labelText: "Username"),
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        }),
                    // ignore: prefer_const_constructors
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter Password", labelText: "Password"),
                    ),

                    SizedBox(height: 20.0),

                    InkWell(
                      onTap: () async {
                        setState(() {
                          changebutton = true;
                        });
                        await Future.delayed(Duration(seconds: 1));
                        Navigator.pushNamed(context, Myrouts.homeRoute);
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: changebutton ? 50 : 150,
                        height: 50,
                        alignment: Alignment.center,
                        child: changebutton
                            ? Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : Text("Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20)),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          shape: changebutton
                              ? BoxShape.circle
                              : BoxShape.rectangle,
                        ),
                      ),
                    ),

                    // ElevatedButton(
                    // ignore: sort_child_properties_last, prefer_const_constructors
                    // child: Text("Login"),
                    //style: TextButton.styleFrom(minimumSize: Size(100, 40)),
                    //onPressed: () {
                    // ignore: avoid_print
                    // Navigator.pushNamed(context, Myrouts.homeRoute);
                    //},
                    //)
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
