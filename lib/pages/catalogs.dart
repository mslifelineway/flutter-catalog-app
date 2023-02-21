// ignore_for_file: public_member_api_docs, sort_constructors_first
import "dart:convert";

import "package:demo/utils/routes.dart";
import 'package:demo/widgets/catalog/catalog_header.dart';
import 'package:demo/widgets/catalog/catalog_list.dart';
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:velocity_x/velocity_x.dart";

import "package:demo/models/catelog.dart";
import "package:demo/utils/colors.dart";

class Catalogs extends StatefulWidget {
  const Catalogs({super.key});

  @override
  State<Catalogs> createState() => _CatalogsState();
}

class _CatalogsState extends State<Catalogs> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(const Duration(seconds: 2));
    var catelogData = await rootBundle.loadString("assets/data/catalog.json");
    var data = jsonDecode(catelogData);
    var products = data["products"];
    CatalogModel.items =
        List.from(products).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, AppRoutes.carts),
        child: const Icon(
          CupertinoIcons.cart,
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          color: context.canvasColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CatalogHeader(),
              if (CatalogModel.items.isNotEmpty)
                const CatalogList().py16().expand()
              else
                const CircularProgressIndicator().centered().expand()
            ],
          ),
        ),
      ),
    );
  }
}
