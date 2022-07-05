import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/cartmodel.dart';
import 'package:flutter_application_1/pages/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class Addtocart extends StatefulWidget {
  final Item catalog;
  const Addtocart({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  State<Addtocart> createState() => _AddtocartState();
}

class _AddtocartState extends State<Addtocart> {
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    bool isAdded = _cart.items.contains(widget.catalog) ?? false;
    return ElevatedButton(
        onPressed: () {
          if (!isAdded) {
            isAdded = isAdded.toggle();
            final _catalog = CatalogModel();
            final _cart = CartModel();
            _cart.catalog = _catalog;
            _cart.add(widget.catalog);

            setState(() {});
          }
        },
        style: ButtonStyle(
          shape: MaterialStateProperty.all(StadiumBorder()),
        ),
        child:
            isAdded ? Icon(Icons.done) : Icon(CupertinoIcons.cart_badge_plus));
  }
}
