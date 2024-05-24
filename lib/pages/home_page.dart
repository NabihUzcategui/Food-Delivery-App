import 'package:flutter/material.dart';

import '../components/components.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const MyDrawer(),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            const MySliverAppBar(
              title: Text("Title"),
              child: Text("HOME"),
            ),
          ],
          body: Container(
            color: Colors.teal,
          ),
        ));
  }
}
