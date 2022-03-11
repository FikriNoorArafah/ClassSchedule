import 'package:classschdule/page/jadwalstudent.dart';
import 'package:classschdule/page/jadwalteacher.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
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
                  image: AssetImage("assets/home2.png"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Container(
                  child: Column(
                children: [
                  Text(
                    "Choose",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Your Role",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                ],
              )),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 50, 0, 15),
              child: Container(
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => jadwalstudent()));
                      },
                      child: Container(
                        width: size.width * 0.9,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Color(0xFF18C68B),
                            borderRadius: BorderRadius.circular(30)),
                        child: Center(
                          child: Text(
                            "Student",
                            style: TextStyle(color: Colors.white, fontSize: 24),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0),
              child: Container(
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => jadwalteacher()));
                      },
                      child: Container(
                        width: size.width * 0.9,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Color(0xFFDC433E),
                            borderRadius: BorderRadius.circular(30)),
                        child: Center(
                          child: Text(
                            "Teacher",
                            style: TextStyle(color: Colors.white, fontSize: 24),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
