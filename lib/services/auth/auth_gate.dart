import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/pages/pages.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          //user is logued in
          if (snapshot.hasData) {
            return const HomePage();
          }

          //user is not logued in
          else {
            return const LoginOrRegisterPage();
          }
        },
      ),
    );
  }
}
