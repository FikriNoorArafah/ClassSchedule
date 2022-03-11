import 'dart:ui';

import 'package:classschdule/page/Dashboard.dart';
import 'package:flutter/material.dart';

class Landing extends StatefulWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width * 1,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              width: size.width * 0.9,
              height: 500,
              decoration: const BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage("assets/home.png"),
                ),
              ),
            ),
            Container(
                child: Column(
              children: [
                Text(
                  "Grafika",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'RobotoMono'),
                ),
                Text(
                  "Class Schedule",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ],
            )),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Container(
                child: Column(
                  children: [
                    Text(
                      "Easy To Use,",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Makes it easy for you",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "To know today's subject",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Makes it easier for you",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "To find classroom quickly",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Dashboard()));
              },
              child: Container(
                width: size.width * 0.9,
                height: 50,
                decoration: BoxDecoration(
                    color: Color(0xFF6AA8FF),
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Text(
                    "Let's Start",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
