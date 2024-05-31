import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/models/food.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  const FoodPage({super.key, required this.food});

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // food image
          Center(
            child: Image.asset(widget.food.imagePath),
          ),

          // food name

          // food description

          // addons

          // buttons -> add to cart
        ],
      ),
    );
  }
}
