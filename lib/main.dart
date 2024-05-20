import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/themes/theme_provider.dart';
import 'package:provider/provider.dart';

import 'pages/pages.dart';

void main() => runApp(
      ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        child: const MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: const LoginOrRegisterPage(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
