import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class Cartpage extends StatelessWidget {
  const Cartpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mytheme.creamecolor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "Cart".text.bold.black.make(),
      ),
      body: Column(
        children: [
          _CartList().p32().expand(),
          Divider(),
          _CartTotal(),
        ],
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
  const _CartTotal({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\₹9999".text.xl4.color(context.theme.accentColor).make(),
          30.widthBox,
          ElevatedButton(
              onPressed: () {},
              child: "Buy".text.center.white.make().w20(context))
        ],
      ),
    );
  }
}

class _CartList extends StatefulWidget {
  const _CartList({super.key});

  @override
  State<_CartList> createState() => __CartListState();
}

class __CartListState extends State<_CartList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (Context, index) => ListTile(
              leading: Icon(Icons.done),
              trailing: IconButton(
                icon: Icon(Icons.remove_circle_outline),
                onPressed: () {},
              ),
              title: "Item 1".text.make(),
            ));
  }
}
