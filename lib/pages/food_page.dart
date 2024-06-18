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
      body: SingleChildScrollView(
        child: Column(
          children: [
            // food image
            SizedBox(
              width: 400,
              child: Image.asset(
                widget.food.imagePath,
                // fit: BoxFit.cover,
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
                          value: false,
                          onChanged: (value) {},
                        );
                      },
                    ),
                  )

                  // buttons -> add to cart
                ],
              ),
            ),
            // food name
          ],
        ),
      ),
    );
  }
}
