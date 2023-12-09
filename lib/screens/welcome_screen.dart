import 'package:fitnestx/screens/auth_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width * 1;
    final height = MediaQuery.sizeOf(context).height * 1;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: height * 0.4),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Fitnest",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "X",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffCC8FED),
                    ),
                  ),
                ],
              ),
              const Text(
                "Everybody Can Train",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 18,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: height * 0.33),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (ctx) => const AuthScreen(),
                      ),
                    );
                  },
                  child: Container(
                    width: width * 0.83,
                    height: height * 0.07,
                    decoration: const BoxDecoration(
                      color: Color(0xff92A3FD),
                      borderRadius: BorderRadius.all(
                        Radius.circular(99),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
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
