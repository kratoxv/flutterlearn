// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers, unused_import, avoid_print, avoid_typevar arameter_names, sort_child_properties_last, unnecessary_null_comparison

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
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    var catalogjson = await rootBundle.loadString("assets/files/product.json");
    var decodedata = jsonDecode(catalogjson);
    var productData = decodedata["products"];
    CatalogModel.items =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
            ? ListView.builder(
                itemCount: CatalogModel.items.length,
                itemBuilder: (context, index) {
                  return Itemwidget(
                    item: CatalogModel.items[index],
                  );
                },
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
    );
  }
}
