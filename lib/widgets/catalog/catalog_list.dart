import "package:demo/models/catelog.dart";
import "package:demo/pages/catalog_details.dart";
import 'package:demo/widgets/catalog/catalog_item.dart';
import "package:flutter/material.dart";

class CatalogList extends StatelessWidget {
  const CatalogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: CatalogModel.items.length,
        itemBuilder: (context, idx) {
          Item item = CatalogModel.items[idx];
          return InkWell(
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CatalogDetails(catalog: item),
                    ),
                  ),
              child: CatalogItem(item: item));
        });
  }
}
