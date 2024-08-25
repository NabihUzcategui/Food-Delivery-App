import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/models/food.dart';

class MyQuantitySelector extends StatelessWidget {
  final int quantity;
  final Food food;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const MyQuantitySelector({
    super.key,
    required this.quantity,
    required this.food,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(50),
      ),
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          //decrease button
          GestureDetector(
            onTap: onDecrement,
            child: Icon(
              Icons.remove,
              size: 22,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),

          //quantity count
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
            ),
            child: SizedBox(
              width: 25,
              child: Center(
                child: Text(
                  quantity.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),

          //increase button
          GestureDetector(
            onTap: onIncrement,
            child: Icon(
              Icons.add,
              size: 22,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
        ],
      ),
    );
  }
}
