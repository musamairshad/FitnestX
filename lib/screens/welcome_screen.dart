import 'package:fitnestx/screens/auth_screen.dart';
import 'package:flutter/material.dart';
import 'package:fitnestx/constants.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final w = MediaQuery.sizeOf(context).width;
    final h = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: kLinear,
      body: Container(
        margin: EdgeInsets.only(top: h * 0.7),
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
                        color: Colors.white,
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
                  color: Colors.white,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: h * 0.6),
                child: ElevatedButton.icon(
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) => const AuthScreen(),
                    ),
                  ),
                  icon: const Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 25,
                    color: Colors.black,
                  ),
                  label: const Text(
                    "Get Started",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: kLinear,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(315, 60),
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
