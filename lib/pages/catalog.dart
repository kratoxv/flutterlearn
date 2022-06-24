import 'package:flutter/material.dart';

class CatalogModel {
  static final Items = [
    Item(
        id: 1,
        name: "morzulolo",
        desc: "this the best power",
        price: 999,
        color: "Color.fromRGBO(0, 0, 0, 1)",
        image:
            "https://www.mozilla.org/media/img/logos/edge/logo-edge.016a47a7fab3.png"),
    Item(
        id: 2,
        name: "laptop",
        desc: "this the best power",
        price: 999,
        color: "Color.fromRGBO(0, 0, 0, 1)",
        image:
            "https://www.mozilla.org/media/img/logos/edge/logo-edge.016a47a7fab3.png"),
    Item(
        id: 2,
        name: "laptop",
        desc: "this the best power",
        price: 999,
        color: "Color.fromRGBO(0, 0, 0, 1)",
        image:
            "https://www.mozilla.org/media/img/logos/edge/logo-edge.016a47a7fab3.png"),
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}
