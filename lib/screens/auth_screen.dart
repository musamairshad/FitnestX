import 'package:fitnestx/constants.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 20),
          child: Center(
            child: Form(
              child: Column(
                children: [
                  const Text(
                    "Hey there,",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 16,
                      color: kBlack,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Create an Account",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: kBlack,
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Enter Name",
                      prefixIcon: Icon(Icons.account_circle_outlined),
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Enter Email",
                      prefixIcon: Icon(Icons.email_outlined),
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Enter Password",
                      prefixIcon: Icon(Icons.lock_outline_rounded),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
