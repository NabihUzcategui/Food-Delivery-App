// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_food_delivery_app/components/my_button.dart';
import 'package:flutter_food_delivery_app/models/food.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<Addon, bool> selectedAddons = {};

  FoodPage({
    super.key,
    required this.food,
  }) {
    // inijtialize selected addons to be false
    for (Addon addon in food.availableAddons) {
      selectedAddons[addon] = false;
    }
  }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                // food image

                SizedBox(
                  width: 400,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Theme.of(context).colorScheme.primary,
                              blurRadius: 10,
                              offset: const Offset(5, 2))
                        ]),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      child: Image.asset(
                        widget.food.imagePath,
                        // fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),

                // food name
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.food.name,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      // food price
                      Text(
                        '\$ ${widget.food.price}',
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 16),
                      ),
                      const SizedBox(height: 10),

                      // food description
                      Text(
                        widget.food.description,
                        style: TextStyle(
                          fontSize: 16,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Divider(color: Theme.of(context).colorScheme.secondary),
                      const SizedBox(height: 10),

                      Text(
                        "Add-ons",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),

                      // addons
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Theme.of(context).colorScheme.secondary),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ListView.builder(
                          itemCount: widget.food.availableAddons.length,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          padding: EdgeInsets.zero,
                          itemBuilder: (context, index) {
                            // get individual addon
                            Addon addons = widget.food.availableAddons[index];

                            // return checkbox UI
                            return CheckboxListTile(
                              title: Text(addons.name),
                              subtitle: Text('\$${addons.price}'),
                              value: widget.selectedAddons[addons],
                              onChanged: (bool? value) {
                                setState(() {
                                  widget.selectedAddons[addons] = value!;
                                });
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                // buttons -> add to cart
                MyButton(
                  text: 'Add to Cart',
                  onTap: () {},
                ),

                const SizedBox(
                  height: 25,
                )
              ],
            ),
          ),
        ),

        // back button
        SafeArea(
          child: Opacity(
            opacity: 0.5,
            child: Container(
              margin: const EdgeInsets.only(left: 25),
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  shape: BoxShape.circle),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios_rounded),
              ),
            ),
          ),
        )
      ],
    );
  }
}
