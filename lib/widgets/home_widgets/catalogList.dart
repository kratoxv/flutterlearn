import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/catalog.dart';
import 'package:flutter_application_1/pages/home_detail_pages.dart';
import 'package:flutter_application_1/widgets/home_widgets/Catalog_image.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items[index];
        return InkWell(
            onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeDetailpages(catalog: catalog),
                  ),
                ),
            child: Catalogitem(catalog: catalog));
      },
    );
  }
}

class Catalogitem extends StatelessWidget {
  final Item catalog;

  const Catalogitem({super.key, required this.catalog})
      : assert(catalog != null);

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Hero(
            tag: Key(catalog.id.toString()),
            child: CatalogImage(image: catalog.image)),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            catalog.name.text.bold.make(),
            catalog.desc.text.textStyle(context.captionStyle).make(),
            5.heightBox,
            ButtonBar(
              alignment: MainAxisAlignment.spaceAround,
              buttonPadding: EdgeInsets.zero,
              children: [
                catalog.price.text.bold.make(),
                ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(StadiumBorder()),
                    ),
                    child: "Buy".text.make())
              ],
            ).pOnly(right: 6.0)
          ],
        ))
      ],
    )).white.roundedSM.square(130).make().py16();
  }
}
