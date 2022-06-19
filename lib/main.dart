// ignore_for_file: unused_import

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/begin-page.dart';
import 'package:flutter_application_1/pages/home.dart';
import 'package:flutter_application_1/utils/routs.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.presentError(details);
  };
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lato().fontFamily),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => Loginpage(),
        Myrouts.homeRoute: (context) => Homepage(),
        Myrouts.loginRoute: (context) => Loginpage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
