import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/components/components.dart';

import 'package:flutter_food_delivery_app/models/restaurant.dart';
import 'package:flutter_food_delivery_app/services/database/firestore.dart';
import 'package:provider/provider.dart';

class DeliveryProgessPage extends StatefulWidget {
  const DeliveryProgessPage({super.key});

  @override
  State<DeliveryProgessPage> createState() => _DeliveryProgessPageState();
}

class _DeliveryProgessPageState extends State<DeliveryProgessPage> {
  //get access to db
  FirestoreService db = FirestoreService();

  @override
  void initState() {
    super.initState();

    //if we get to this page, submit order ti firestore db
    String receipt = context.read<Restaurant>().displayCartReceipt();
    db.saveOrdertoDataBase(receipt);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: _buildBottomNavBar(context),
      body: const Column(
        children: [
          MyReceipt(),
        ],
      ),
    );
  }

  Widget _buildBottomNavBar(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          //profile pic of driver
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.person),
            ),
          ),
          const SizedBox(width: 10),
          //driver detail
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Nabih Uzcategui",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Driver",
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
              ),
            ],
          ),
          const Spacer(),
          const Row(
            children: [],
          ),
          //mesaage button
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.message),
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          const SizedBox(width: 10),
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.call),
              color: Colors.green,
            ),
          ),

          //call button
        ],
      ),
    );
  }
}
