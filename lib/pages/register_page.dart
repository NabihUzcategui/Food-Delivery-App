// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/utils/extension.dart';

import '../components/components.dart';
import '../services/auth/auth_service.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key, this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //text editing ocntrollers
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  //register method
  void register() async {
    //get auth service
    final authService = AuthService();

    //check if passwords match -> create user
    if (passController.text == confirmPasswordController.text) {
      //try create user
      try {
        await authService.signUpwithEmailAndPassword(
          emailController.text,
          passController.text,
        );
        //display any error
      } catch (e) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(
              e.toString(),
            ),
          ),
        );
      }
      //if password don't match -> show error
    } else {
      showDialog(
        context: context,
        builder: (context) => const AlertDialog(
          title: Text("Passwords don't match"),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Logo
            Icon(
              Icons.lock_open_outlined,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            25.pv,

            //message, app  slogan
            Text(
              "Let´s create an account for you",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),

            25.pv,

            // email textfield
            MyTextField(
              controller: emailController,
              hintText: 'Email',
              obscureText: false,
            ),

            10.pv,
            // password textfield
            MyTextField(
              controller: passController,
              hintText: 'Password',
              obscureText: true,
            ),

            10.pv,
            // confirm password textfield
            MyTextField(
              controller: confirmPasswordController,
              hintText: 'Confirm Password',
              obscureText: true,
            ),

            10.pv,

            // sing up button
            MyButton(
              text: "Sign Up",
              onTap: register,
            ),
            25.pv,

            // already have an account?  Login here!
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
                4.ph,
                GestureDetector(
                  // onTap: widget.onTap,
                  onTap: widget.onTap,
                  child: Text(
                    "Login now",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
