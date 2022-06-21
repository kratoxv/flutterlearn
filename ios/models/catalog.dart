import 'package:flutter/material.dart';

class item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}

final product = [
  item(
      id: "ijgar",
      name: "morzulolo",
      desc: "this the best power",
      price: 999,
      color: "Color.fromRGBO(0, 0, 0, 1)",
      image:
          "https://www.mozilla.org/media/img/logos/edge/logo-edge.016a47a7fab3.png")
];
