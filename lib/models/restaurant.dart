import 'package:flutter/material.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    //burgers
    Food(
      name: "Classic Cheese Burger",
      imagePath: "images/burgers/burger1.jpeg",
      description:
          "delicious beef burger with lettuce, tomato, onion and lots of pepper.",
      price: 8.99,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
        Addon(name: "Avocado", price: 1.99),
      ],
      category: FoodCategory.burgers,
    ),
    Food(
      name: "Classic Burger",
      imagePath: "images/burgers/burger2.jpeg",
      description:
          "delicious beef burger with lettuce, tomato, onion and lots of pepper.",
      price: 6.99,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
        Addon(name: "Avocado", price: 1.99),
      ],
      category: FoodCategory.burgers,
    ),
    Food(
      name: "BBQ Burger",
      imagePath: "images/burgers/burger3.jpeg",
      description:
          "delicious beef burger with lettuce, tomato, onion and lots of pepper.",
      price: 7.99,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
        Addon(name: "Avocado", price: 1.99),
      ],
      category: FoodCategory.burgers,
    ),
    Food(
      name: "Chicken Burger",
      imagePath: "images/burgers/burger1.jpeg",
      description:
          "delicious beef burger with lettuce, tomato, onion and lots of pepper.",
      price: 5.99,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
        Addon(name: "Avocado", price: 1.99),
      ],
      category: FoodCategory.burgers,
    ),
    Food(
      name: "Mega Burger",
      imagePath: "images/burgers/burger4.jpg",
      description:
          "delicious beef burger with lettuce, tomato, onion and lots of pepper.",
      price: 10.99,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
        Addon(name: "Avocado", price: 1.99),
      ],
      category: FoodCategory.burgers,
    ),

    //salads
    Food(
      name: "Avocado Salad",
      imagePath: "images/salads/salad1.jpeg",
      description:
          "delicious beef burger with lettuce, tomato, onion and lots of pepper.",
      price: 5.49,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
        Addon(name: "Avocado", price: 1.99),
      ],
      category: FoodCategory.salads,
    ),
    Food(
      name: "Cesar Salad",
      imagePath: "images/salads/salad2.jpg",
      description:
          "delicious beef burger with lettuce, tomato, onion and lots of pepper.",
      price: 6.99,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
        Addon(name: "Avocado", price: 1.99),
      ],
      category: FoodCategory.salads,
    ),
    Food(
      name: "Ranch Salad",
      imagePath: "images/salads/salad3.jpeg",
      description:
          "delicious beef burger with lettuce, tomato, onion and lots of pepper.",
      price: 4.99,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
        Addon(name: "Avocado", price: 1.99),
      ],
      category: FoodCategory.salads,
    ),
    Food(
      name: "Chicken Salad",
      imagePath: "images/salads/salad4.jpg",
      description:
          "delicious beef burger with lettuce, tomato, onion and lots of pepper.",
      price: 6.50,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
        Addon(name: "Avocado", price: 1.99),
      ],
      category: FoodCategory.salads,
    ),
    Food(
      name: "Mediterranean Salad",
      imagePath: "images/salads/salad5.jpg",
      description:
          "delicious beef burger with lettuce, tomato, onion and lots of pepper.",
      price: 7.50,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
        Addon(name: "Avocado", price: 1.99),
      ],
      category: FoodCategory.salads,
    ),

    //sides
    Food(
      name: "Sides tipo 1",
      imagePath: "images/sides/sides1.jpg",
      description:
          "delicious beef burger with lettuce, tomato, onion and lots of pepper.",
      price: 3.99,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
        Addon(name: "Avocado", price: 1.99),
      ],
      category: FoodCategory.sides,
    ),
    Food(
      name: "Sides tipo 2",
      imagePath: "images/sides/sides2.jpeg",
      description:
          "delicious beef burger with lettuce, tomato, onion and lots of pepper.",
      price: 4.50,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
        Addon(name: "Avocado", price: 1.99),
      ],
      category: FoodCategory.sides,
    ),
    Food(
      name: "Sides tipo 3",
      imagePath: "images/sides/sides3.jpg",
      description:
          "delicious beef burger with lettuce, tomato, onion and lots of pepper.",
      price: 4.99,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
        Addon(name: "Avocado", price: 1.99),
      ],
      category: FoodCategory.sides,
    ),
    Food(
      name: "Sides tipo 4",
      imagePath: "images/sides/sides4.jpg",
      description:
          "delicious beef burger with lettuce, tomato, onion and lots of pepper.",
      price: 2.99,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
        Addon(name: "Avocado", price: 1.99),
      ],
      category: FoodCategory.sides,
    ),
    Food(
      name: "Sides tipo 5",
      imagePath: "images/sides/sides5.jpg",
      description:
          "delicious beef burger with lettuce, tomato, onion and lots of pepper.",
      price: 3.99,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
        Addon(name: "Avocado", price: 1.99),
      ],
      category: FoodCategory.sides,
    ),

    //desserts
    Food(
      name: "Dessert tipo 1",
      imagePath: "images/desserts/dessert1.jpeg",
      description:
          "delicious beef burger with lettuce, tomato, onion and lots of pepper.",
      price: 5.50,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
        Addon(name: "Avocado", price: 1.99),
      ],
      category: FoodCategory.desserts,
    ),
    Food(
      name: "Dessert tipo 2",
      imagePath: "images/desserts/dessert2.jpg",
      description:
          "delicious beef burger with lettuce, tomato, onion and lots of pepper.",
      price: 4.50,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
        Addon(name: "Avocado", price: 1.99),
      ],
      category: FoodCategory.desserts,
    ),
    Food(
      name: "Dessert tipo 3",
      imagePath: "images/desserts/dessert3.jpeg",
      description:
          "delicious beef burger with lettuce, tomato, onion and lots of pepper.",
      price: 6.99,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
        Addon(name: "Avocado", price: 1.99),
      ],
      category: FoodCategory.desserts,
    ),
    Food(
      name: "Dessert tipo 4",
      imagePath: "images/desserts/dessert4.jpeg",
      description:
          "delicious beef burger with lettuce, tomato, onion and lots of pepper.",
      price: 5.99,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
        Addon(name: "Avocado", price: 1.99),
      ],
      category: FoodCategory.desserts,
    ),
    Food(
      name: "Dessert tipo 5",
      imagePath: "images/desserts/dessert5.jpeg",
      description:
          "delicious beef burger with lettuce, tomato, onion and lots of pepper.",
      price: 7.50,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
        Addon(name: "Avocado", price: 1.99),
      ],
      category: FoodCategory.desserts,
    ),

    //drinks
    Food(
      name: "Drink type 1",
      imagePath: "images/drinks/drink1.jpeg",
      description:
          "delicious beef burger with lettuce, tomato, onion and lots of pepper.",
      price: 3.99,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
        Addon(name: "Avocado", price: 1.99),
      ],
      category: FoodCategory.drinks,
    ),
    Food(
      name: "Drink type 2",
      imagePath: "images/drinks/drink2.jpg",
      description:
          "delicious beef burger with lettuce, tomato, onion and lots of pepper.",
      price: 4.99,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
        Addon(name: "Avocado", price: 1.99),
      ],
      category: FoodCategory.drinks,
    ),
    Food(
      name: "Drink type 3",
      imagePath: "images/drinks/drink3.jpg",
      description:
          "delicious beef burger with lettuce, tomato, onion and lots of pepper.",
      price: 6.50,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
        Addon(name: "Avocado", price: 1.99),
      ],
      category: FoodCategory.drinks,
    ),
    Food(
      name: "Drink type 4",
      imagePath: "images/drinks/drink4.jpg",
      description:
          "delicious beef burger with lettuce, tomato, onion and lots of pepper.",
      price: 5.99,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
        Addon(name: "Avocado", price: 1.99),
      ],
      category: FoodCategory.drinks,
    ),
    Food(
      name: "Drink type 5",
      imagePath: "images/drinks/drink5.jpeg",
      description:
          "delicious beef burger with lettuce, tomato, onion and lots of pepper.",
      price: 4.99,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
        Addon(name: "Avocado", price: 1.99),
      ],
      category: FoodCategory.drinks,
    ),
  ];

  // G e t t e r s
  List<Food> get menu => _menu;

  // O p e r a t i o n s

  // add to cart

  // remove from cart

  // get total price of cart

  // get total items in cart

  // clear cart

  // H e l p e r s

  // generate a recipe
  // format doble value into money format
  // format list of addons into string sumary
}
