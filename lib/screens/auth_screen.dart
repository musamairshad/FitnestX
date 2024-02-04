import 'package:fitnestx/constants.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  var _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(top: 30),
          child: Center(
            child: Form(
              child: Container(
                margin: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Center(
                      child: Text(
                        "Hey there,",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 16,
                          color: kBlack,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Center(
                      child: Text(
                        "Create an Account",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: kBlack,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffF7F8F8),
                        border: Border.all(width: 0.75, color: Colors.black),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          labelText: "Enter Name",
                          prefixIcon: Icon(Icons.account_circle_outlined),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffF7F8F8),
                        border: Border.all(width: 0.75, color: Colors.black),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          labelText: "Email",
                          prefixIcon: Icon(Icons.email_outlined),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffF7F8F8),
                        border: Border.all(width: 0.75, color: Colors.black),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: "Password",
                          prefixIcon: const Icon(Icons.lock_outline_rounded),
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.remove_red_eye_outlined),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Checkbox(
                          value: _isChecked,
                          onChanged: (value) {
                            setState(() {
                              _isChecked = value!;
                            });
                          },
                        ),
                        const SizedBox(
                          width: 280,
                          child: Text(
                              "By continuing you accept our Privacy Policy and "
                              "Term of Use"),
                        ),
                      ],
                    ),
                    Center(
                      child: Container(
                        margin: const EdgeInsets.only(top: 100),
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
                            "Register",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
