import 'package:fitnestx/screens/auth_screen.dart';
import 'package:flutter/material.dart';
import 'package:fitnestx/constants.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 300),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: "Fitnest",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        fontSize: 36,
                        color: kBlack,
                      ),
                    ),
                    TextSpan(
                      text: "X",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                        color: Color(0xffCC8FED),
                      ),
                    ),
                  ],
                ),
              ),
              const Text(
                "Everybody Can Train",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 18,
                  color: kGray1,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 230),
                child: ElevatedButton(
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) => const AuthScreen(),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(315, 60),
                    backgroundColor: kLinear,
                  ),
                  child: const Text(
                    "Get Started",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
