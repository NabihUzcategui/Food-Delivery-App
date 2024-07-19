//food item
class Food {
  final String name; // cheese burger
  final String description; // a delicious cheese burger full cheese
  final String imagePath; // images/cheese_burger.png
  final double price; // 4.99
  final FoodCategory category; // burger
  final List<Addon>
      availableAddons; // [cheese, lettuce, tomato, sauce, pickles]

  Food({
    required this.name,
    required this.imagePath,
    required this.description,
    required this.price,
    required this.availableAddons,
    required this.category,
  });
}

//food category
enum FoodCategory {
  burgers,
  salads,
  sides,
  desserts,
  drinks,
}

// food addons
class Addon {
  String name;
  double price;

  Addon({
    required this.name,
    required this.price,
  });
}
