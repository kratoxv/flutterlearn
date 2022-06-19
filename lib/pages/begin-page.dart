// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routs.dart';

// ignore: use_key_in_widget_constructors
class Loginpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Center(
            // ignore: sized_box_for_whitespace
            child: Container(
          height: 1000,
          width: 1000,
          child: SingleChildScrollView(
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
                  "Welcome (●'◡'●)",
                  style: TextStyle(
                      color: Color.fromARGB(255, 58, 50, 38),
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
                      ),
                      // ignore: prefer_const_constructors
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Enter Password", labelText: "Password"),
                      ),

                      SizedBox(height: 20.0),
                      ElevatedButton(
                        // ignore: sort_child_properties_last, prefer_const_constructors
                        child: Text("Login"),
                        style: TextButton.styleFrom(minimumSize: Size(100, 40)),
                        onPressed: () {
                          // ignore: avoid_print
                          Navigator.pushNamed(context, Myrouts.homeRoute);
                        },
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )));
  }
}
