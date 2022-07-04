
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