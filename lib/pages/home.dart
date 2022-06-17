import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    int day = 10;
    String name = "Welcome to $day days of flutter";

    return Scaffold(
      appBar: AppBar(
       
        title: Text("My First flutter App "),
      ),
        
          body: Center(
        child: Container(
          
          child: Text(" $name"),
        ),
      ),
      
      drawer: Drawer(),
    );
  }
}
