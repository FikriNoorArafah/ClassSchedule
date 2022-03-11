import 'package:classschdule/page/student.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class magang extends StatefulWidget {
  const magang({Key? key}) : super(key: key);

  @override
  State<magang> createState() => _magangState();
}

class _magangState extends State<magang> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    DateTime dateToday = new DateTime.now();
    String date = DateFormat.yMMMMd().format(dateToday);
    return Scaffold(
      key: _formKey,
      body: Container(
        width: size.width * 1,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 36, size.width * 0.03, 0),
                child: Container(
                  width: 50,
                  height: 60,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage("assets/smk.png"),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Container(
                    child: Column(
                  children: [
                    Text(
                      date,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
              ),
              Container(
                width: size.width * 0.9,
                child: TextFormField(
                  textAlign: TextAlign.center,
                  decoration: new InputDecoration(
                    hintText: "Masukan Kelasmu",
                    enabledBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFF18C68B), width: 4)),
                  ),
                  onFieldSubmitted: (value) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => student()));
                  },
                  // The validator receives the text that the user has entered.
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: Container(
                  width: size.width * 0.9,
                  decoration: BoxDecoration(
                      color: Color(0xFF6AA8FF),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.6),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(4, 6),
                        )
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                    child: Column(
                      children: [
                        Text(
                          "Kelas Anda Saat Ini",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Sedang Melaksanakan",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Praktik Kerja Lingkungan",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ],
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
