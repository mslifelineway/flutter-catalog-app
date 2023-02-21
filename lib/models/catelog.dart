class CatalogModel {
  static List<Item> items = [];
}

class Item {
  final String id;
  final String name;
  final String description;
  final String price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.description,
      required this.price,
      required this.color,
      required this.image});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
        id: map["id"],
        name: map["name"],
        description: map["description"],
        color: map["color"],
        image: map["image"],
        price: map["price"]);
  }

  toMap() => {
        "id": id,
        "name": name,
        "description": description,
        "color": color,
        "image": image,
        "price": price
      };
}
