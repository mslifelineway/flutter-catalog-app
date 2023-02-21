import 'package:demo/models/catelog.dart';
import 'package:demo/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

import "package:velocity_x/velocity_x.dart";

class CatalogItem extends StatelessWidget {
  final Item item;
  const CatalogItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
            child: Row(
      children: [
        // ignore: todo
        //TODO: Uncomment when we have image data from database
        // Hero(
        //   tag: Key(item.id),
        //   child: CatalogImage(
        //     image: item.image,
        //   ),
        // ),
        Hero(
          tag: Key(item.id),
          child: const Image(
            image: Svg("assets/images/profile_icon.svg"),
            width: 80,
            height: 80,
            fit: BoxFit.cover,
          ),
        ),
        16.widthBox,
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            item.name.text.xl.bold
                .textStyle(context.theme.textTheme.displayMedium)
                .make(),
            item.description.text
                .textStyle(context.textTheme.labelLarge)
                .make()
                .pOnly(top: 6),
            10.heightBox,
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: EdgeInsets.zero,
              children: [
                "\$${item.price}"
                    .text
                    .bold
                    .lg
                    .textStyle(context.theme.textTheme.displaySmall)
                    .make(),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(const EdgeInsets.all(8)),
                    shape: MaterialStateProperty.all(const CircleBorder()),
                  ),
                  child: const Icon(
                    CupertinoIcons.cart_fill_badge_plus,
                    color: Colors.white,
                  ),
                )
              ],
            )
          ],
        )),
      ],
    ).p12())
        .color(context.cardColor)
        .rounded
        .make()
        .py16();
  }
}
