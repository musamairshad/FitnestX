import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ActivityTrackerScreen extends StatelessWidget {
  const ActivityTrackerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: const EdgeInsets.only(left: 20, bottom: 10, top: 10),
          decoration: BoxDecoration(
            color: const Color(0xffF7F8F8),
            borderRadius: BorderRadius.circular(10),
          ),
          child: RawMaterialButton(
            onPressed: () {},
            shape: const CircleBorder(),
            child: const Icon(
              Icons.arrow_back_ios_new_outlined,
              size: 22,
            ),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          "Activity Tracker",
          style: TextStyle(
            fontFamily: "Poppins",
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(right: 30),
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              color: const Color(0xffF7F8F8),
              borderRadius: BorderRadius.circular(10),
            ),
            child: RawMaterialButton(
              onPressed: () {},
              shape: const CircleBorder(),
              child: const Icon(
                Icons.more_horiz_rounded,
                size: 22,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 25),
        child: Center(
          child: Column(
            children: [
              Container(
                height: 149,
                width: 335,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 218, 224, 255),
                  borderRadius: BorderRadius.circular(22),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 20, left: 20),
                          child: const Text(
                            "Today Target",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(top: 20, right: 20),
                          width: 32,
                          height: 32,
                          decoration: BoxDecoration(
                            color: const Color(0xff92A3FD),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: RawMaterialButton(
                            onPressed: () {},
                            shape: const CircleBorder(),
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 22,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                            top: 18,
                            // left: 15,
                          ),
                          height: 60,
                          width: 140,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(left: 15),
                                child: const FaIcon(
                                  FontAwesomeIcons.glassWater,
                                  color: Color(0xff1ca3ec),
                                  size: 30,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin:
                                        const EdgeInsets.only(top: 10, left: 8),
                                    child: const Text(
                                      "8L",
                                      style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff92A3FD),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 8),
                                    child: const Text(
                                      "Water Intake",
                                      style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontSize: 12,
                                        color: Color(0xff7B6F72),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            top: 18,
                            // left: 12
                          ),
                          height: 60,
                          width: 140,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white,
                          ),
                          child: Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(left: 15),
                                child: const FaIcon(
                                  FontAwesomeIcons.shoePrints,
                                  color: Color(0xffFDD76F),
                                  size: 30,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin:
                                        const EdgeInsets.only(top: 10, left: 8),
                                    child: const Text(
                                      "2400",
                                      style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff92A3FD),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 8),
                                    child: const Text(
                                      "Foot Steps",
                                      style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontSize: 12,
                                        color: Color(0xff7B6F72),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    "Activity Progress",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  Container(
                    height: 40,
                    width: 106,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 183, 195, 255),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 13),
                          child: const Text(
                            "Weekly",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.keyboard_arrow_down_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
