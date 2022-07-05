// ignore_for_file: unused_import, unused_element

import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/pages/catalog.dart';

class CartModel {
  late CatalogModel _catalog;

  final List<int> _itemIds = [];

  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  // ignore: non_constant_identifier_names
  num  get totalprice => items.fold(0, (total, current)  => total + current.price;
);

  void add(Item item) {
    _itemIds.add(item.id);
  }

  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
