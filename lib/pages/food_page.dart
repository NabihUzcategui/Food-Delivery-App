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
          SizedBox(
            width: 420,
            child: Image.asset(
              widget.food.imagePath,
              fit: BoxFit.cover,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(25.0),
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
                ),
                const SizedBox(height: 10),

                Text(
                  "Add-ons",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                // addons
                ListView.builder(
                  itemCount: widget.food.availableAddons.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    Addon addons = widget.food.availableAddons[index];
                    return CheckboxListTile(
                      title: Text(addons.name),
                      subtitle: Text(addons.price.toString()),
                      value: false,
                      onChanged: (value) {},
                    );
                  },
                )

                // buttons -> add to cart
              ],
            ),
          ),
          // food name
        ],
      ),
    );
  }
}
