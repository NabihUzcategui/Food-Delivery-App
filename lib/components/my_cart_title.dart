import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/components/my_quantity_selector.dart';
import 'package:flutter_food_delivery_app/models/restaurant.dart';

import 'package:provider/provider.dart';

import '../models/cart_item.dart';

class MyCartTitle extends StatelessWidget {
  final CartItem cartItem;
  const MyCartTitle({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) => Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(8),
        ),
        margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Food name
                    Text(cartItem.food.name),
                    //Food priceß
                    Text('\$${cartItem.food.price}'),
                  ],
                ),

                // increment or decrement cuantity
                MyQuantitySelector(
                  quantity: cartItem.quantity,
                  food: cartItem.food,
                  onDecrement: () {
                    restaurant.removeFromCart(cartItem);
                  },
                  onIncrement: () {
                    restaurant.addToCart(
                      cartItem.food,
                      cartItem.selectedAddons,
                    );
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
