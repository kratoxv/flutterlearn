// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers, unused_import, avoid_print, avoid_typevar arameter_names

import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:flutter_application_1/pages/catalog.dart';
import 'package:flutter_application_1/widgets/item_widget.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    super.initState();
    loaddat();
  }

  loaddat() async {
    final catalogjason =
        await rootBundle.loadString("assets/files/product.json");
    final decodedata = jsonDecode(catalogjason);
    final productdata = decodedata["products"];
    CatalogModel.Items = List.from(productdata)
        .map((Item) => Item.fromMap(Item))
        .toList() as List<Item>;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Catalog App ",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView.builder(
        
        itemCount: CatalogModel.Items.length,
        itemBuilder: (context, index) {
          return Itemwidget(
            item: CatalogModel.Items[index],
          );
        },
      ),
      drawer: MyDrawer(),
    );
  }
}
