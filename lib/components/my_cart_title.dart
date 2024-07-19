import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/models/restaurant.dart';
import 'package:provider/provider.dart';

import '../models/cart_item.dart';

class MyCartTitle extends StatelessWidget {
  final CartItem cartItem;
  const MyCartTitle({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, restaurant, child) => Container(
        child: Column(
          children: [
            Row(
              children: [
                //food image
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    cartItem.food.imagePath,
                    height: 100,
                    width: 100,
                  ),
                ),

                const SizedBox(width: 10),

                // name and price
                Column(
                  children: [
                    Text(cartItem.food.name),
                    Text('\$${cartItem.food.price}'),
                  ],
                )

                // increment or decrement cuantity
              ],
            )
          ],
        ),
      ),
    );
  }
}
