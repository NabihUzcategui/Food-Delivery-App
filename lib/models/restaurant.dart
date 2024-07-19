import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/models/cart_item.dart';

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

  List<CartItem> get cart => _cart;

  // O p e r a t i o n s

  //user cart
  final List<CartItem> _cart = [];

  // add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    // see if there is a cart item already withh the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      //check if the food items are the same
      bool isSameFood = item.food == food;
      //check if the list of selected addons are the same
      bool isSameAddons =
          const ListEquality().equals(item.selectedAddons, selectedAddons);
      return isSameFood && isSameAddons;
    });
    //if the alredy exists, increase its quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }
    // otherwise, add a new cart item to the cart
    else {
      _cart.add(
        CartItem(
          food: food,
          selectedAddons: selectedAddons,
        ),
      );
    }
    notifyListeners();
  }

  // remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIdex = _cart.indexOf(cartItem);

    if (cartIdex != -1) {
      if (_cart[cartIdex].quantity > 1) {
        _cart[cartIdex].quantity--;
      } else {
        _cart.removeAt(cartIdex);
      }
    }
    notifyListeners();
  }

  // get total price of cart
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }

      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  // get total items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;
    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  // clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  // H e l p e r s

  // generate a recipe
  // format doble value into money format
  // format list of addons into string sumary
}
