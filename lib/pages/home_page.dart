import "dart:convert";

import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:flutter_svg_provider/flutter_svg_provider.dart";

import "../models/catelog.dart";
import "../widgets/app_drawer.dart";

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    // await Future.delayed(const Duration(seconds: 2));
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
      drawer: const AppDrawer(),
      appBar: AppBar(
        title: Container(
          alignment: Alignment.center,
          child: const Text(
            "Catalog",
          ),
        ),
      ),
      body: CatalogModel.items.isNotEmpty
          ?
          //  ListView.builder(
          //     padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          //     itemCount: CatalogModel.items.length,
          //     itemBuilder: (context, index) =>
          //         ItemDetails(item: CatalogModel.items[index]),
          //   )
          Padding(
              padding: const EdgeInsets.all(16),
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16),
                  itemCount: CatalogModel.items.length,
                  itemBuilder: (context, index) {
                    Item item = CatalogModel.items[index];
                    return Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: GridTile(
                        header: Container(
                            padding: const EdgeInsets.all(12),
                            color: Colors.deepPurple,
                            child: Text(item.name,
                                textAlign: TextAlign.center,
                                style: const TextStyle(color: Colors.white))),
                        footer: Container(
                            padding: const EdgeInsets.all(12),
                            color: Colors.black87,
                            child: Text("\$ ${item.price}",
                                textAlign: TextAlign.center,
                                style: const TextStyle(color: Colors.white))),
                        child: const Image(
                          image: Svg('assets/images/profile_icon.svg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  }),
            )
          : const Center(child: CircularProgressIndicator()),
    );
  }
}
