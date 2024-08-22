import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/components/my_button.dart';
import 'package:flutter_food_delivery_app/components/my_cart_title.dart';
import 'package:flutter_food_delivery_app/models/restaurant.dart';
import 'package:provider/provider.dart';

import 'pages.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) {
        //cart
        final userCart = restaurant.cart;

        //scaffold UI
        return Scaffold(
          appBar: AppBar(
            title: const Text("Cart"),
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
            actions: [
              //claer cart button
              IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text(
                        "Are you sure you want to clear the cart?",
                      ),
                      actions: [
                        //cancel button
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text("Cancel"),
                        ),

                        //confirm button
                        TextButton(
                          onPressed: () {
                            //clear cart
                            restaurant.clearCart();
                            Navigator.pop(context);
                          },
                          child: const Text("Confirm"),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
          body: Column(
            children: [
              //list of cart items
              Expanded(
                child: Column(
                  children: [
                    userCart.isEmpty
                        ? const Expanded(
                            child: Center(
                              child: Text("Cart is empty..."),
                            ),
                          )
                        : Expanded(
                            child: ListView.builder(
                              itemCount: userCart.length,
                              itemBuilder: (context, index) {
                                //get individual cart item
                                final cartItem = userCart[index];

                                //return cart item UI
                                return MyCartTitle(cartItem: cartItem);
                              },
                            ),
                          ),
                  ],
                ),
              ),
              //button to checkout
              MyButton(
                  text: "Checkout",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PaymentPage(),
                      ),
                    );
                  }),
              const SizedBox(height: 25),
            ],
          ),
        );
      },
    );
  }
}
