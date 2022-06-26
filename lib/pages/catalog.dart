// ignore_for_file: unused_import, non_constant_identifier_names

import 'package:flutter/material.dart';

class CatalogModel {
  static List<Item> Items = [
    Item(
        id: 1,
        name: "morzulolo",
        desc: "this the best power",
        price: "₹999",
        color: "Color.fromRGBO(0, 0, 0, 1)",
        image:
            "https://www.mozilla.org/media/img/logos/edge/logo-edge.016a47a7fab3.png"),
    Item(
        id: 2,
        name: "laptop",
        desc: "this the best power",
        price: "₹999",
        color: "Color.fromRGBO(0, 0, 0, 1)",
        image:
            "https://www.mozilla.org/media/img/logos/edge/logo-edge.016a47a7fab3.png"),
    Item(
        id: 3,
        name: "transico",
        desc: "this the best power",
        price: "₹999",
        color: "Color.fromRGBO(0, 0, 0, 1)",
        image:
            "https://www.mozilla.org/media/img/logos/edge/logo-edge.016a47a7fab3.png"),
    Item(
        id: 4,
        name: "Tv",
        desc: "this the best power",
        price: "₹999",
        color: "Color.fromRGBO(0, 0, 0, 1)",
        image:
            "https://www.mozilla.org/media/img/logos/edge/logo-edge.016a47a7fab3.png"),
    Item(
        id: 5,
        name: "Voltado",
        desc: "this the best power",
        price: "₹999",
        color: "Color.fromRGBO(0, 0, 0, 1)",
        image:
            "https://www.mozilla.org/media/img/logos/edge/logo-edge.016a47a7fab3.png"),
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final String price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
        id: map["id"],
        name: map["name"],
        desc: map["desc"],
        price: map["price"],
        color: map["color"],
        image: map["image"]);
  }

  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "image": image,
      };
}
