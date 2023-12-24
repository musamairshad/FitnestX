import 'package:fitnestx/screens/auth_screen.dart';
import 'package:fitnestx/widgets/main_button_widget.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: height * 0.35),
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
                  padding: EdgeInsets.only(top: height * 0.28),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (ctx) => const AuthScreen(),
                        ),
                      );
                    },
                    child: const MainButtonWidget(text: "Get Started"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
