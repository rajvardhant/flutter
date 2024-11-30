class CatalogModel {
  static final List<Item> items = [
    Item(
      "001",
      "iPhone 16 Pro",
      "Grade 5 titanium design with a new.",
      1000,
      "#33505a",
      "https://www.apple.com/in/iphone-16-pro/images/overview/product-stories/design/display__f5509jfp9nyq_large_2x.jpg",
    )
  ];
}

class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(this.id, this.name, this.desc, this.price, this.color, this.image);
}
