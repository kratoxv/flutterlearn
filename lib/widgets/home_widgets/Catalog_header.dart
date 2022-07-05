
// ignore_for_file: file_names, use_key_in_widget_constructors, avoid_unnecessary_containers

import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';

class Catalogheader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          "Catalog App".text.xl4.bold.make(),
          "Trending product".text.bold.make(),
        ],
      ),
    );
  }
}