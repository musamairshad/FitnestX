import 'package:fitnestx/widgets/main_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool? _isChecked = false;
  bool _isHidden = true;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width * 1;
    final height = MediaQuery.sizeOf(context).height * 1;
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            margin: EdgeInsets.only(top: height * 0.04),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Text(
                    "Hey there,",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 16,
                    ),
                  ),
                  const Text(
                    "Create an Account",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Container(
                    width: width * 0.85,
                    height: height * 0.070,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(
                        color: const Color(0xffF7F8F8),
                      ),
                      color: const Color(0xffF7F8F8),
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.account_circle_rounded),
                        labelText: "First Name",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Container(
                    width: width * 0.85,
                    height: height * 0.070,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(
                        color: const Color(0xffF7F8F8),
                      ),
                      color: const Color(0xffF7F8F8),
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.account_circle_rounded),
                        labelText: "Last Name",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Container(
                    width: width * 0.85,
                    height: height * 0.070,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(
                        color: const Color(0xffF7F8F8),
                      ),
                      color: const Color(0xffF7F8F8),
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.email_outlined),
                        labelText: "Email",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Container(
                    width: width * 0.85,
                    height: height * 0.070,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(
                        color: const Color(0xffF7F8F8),
                      ),
                      color: const Color(0xffF7F8F8),
                    ),
                    child: TextFormField(
                      obscureText: _isHidden,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: const Icon(Icons.lock_outline_rounded),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _isHidden = !_isHidden;
                            });
                          },
                          icon: _isHidden
                              ? const FaIcon(FontAwesomeIcons.eyeSlash)
                              : const Icon(
                                  Icons.remove_red_eye_outlined,
                                ),
                        ),
                        labelText: "Password",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: width * 0.03),
                    child: Row(
                      children: [
                        Checkbox(
                          value: _isChecked,
                          onChanged: (value) {
                            setState(() {
                              _isChecked = value;
                            });
                          },
                        ),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        SizedBox(
                          width: width * 0.77,
                          height: height * 0.045,
                          // width: 300,
                          child: const Text(
                            "By continuing you accept our Privacy Policy and \nTerm of Use",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: height * 0.075),
                    child: const MainButtonWidget(text: "Register"),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: width * 0.01),
                        child: Container(
                          height: height * 0.0008,
                          width: width * 0.43,
                          color: Colors.black,
                        ),
                      ),
                      const Text(
                        "Or",
                        style: TextStyle(
                          fontFamily: "Poppins",
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: width * 0.01),
                        child: Container(
                          height: height * 0.0008,
                          width: width * 0.43,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.025,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: height * 0.055,
                        width: width * 0.12,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.black,
                          ),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            "assets/images/google-logo.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: width * 0.06,
                      ),
                      Container(
                        height: height * 0.055,
                        width: width * 0.12,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.black,
                          ),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: const FaIcon(
                            FontAwesomeIcons.facebookF,
                            color: Color(0xff1877F2),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already have an account?",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          color: Color(0xff1D1617),
                          fontSize: 14,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Login",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            color: Color(0xffC58BF2),
                          ),
                        ),
                      ),
                    ],
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
