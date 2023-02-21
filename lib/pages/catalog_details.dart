import 'package:demo/models/catelog.dart';
import 'package:demo/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogDetails extends StatelessWidget {
  final Item catalog;
  const CatalogDetails({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorPrimary,
      appBar: AppBar(backgroundColor: Colors.transparent),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl3.red800.make(),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(colorSecondary),
                  shape: MaterialStateProperty.all(const StadiumBorder())),
              child: "Add to cart".text.lg.make(),
            ).wh(120, 50)
          ],
        ).pSymmetric(v: 10, h: 25),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            // Hero(
            //   tag: Key(item.id),
            //   child: CatalogImage(
            //     image: item.image,
            //   ),
            // ).centered().p16(),
            Hero(
              tag: Key(catalog.id),
              child: const Image(
                image: Svg("assets/images/profile_icon.svg"),
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ).centered().h32(context),
            Expanded(
              child: VxArc(
                height: 30,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  width: context.screenWidth,
                  color: Colors.white,
                  child: Column(children: [
                    catalog.name.text.xl4.bold.color(colorSecondary).make(),
                    6.heightBox,
                    catalog.description.text.xl
                        .textStyle(context.captionStyle)
                        .make()
                        .pOnly(top: 6),
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim ven."
                        .text
                        .textStyle(context.captionStyle)
                        .make()
                        .py16(),
                  ]).pSymmetric(v: 64, h: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
