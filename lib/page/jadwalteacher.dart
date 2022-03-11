import 'package:classschdule/page/teacher.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class jadwalteacher extends StatefulWidget {
  const jadwalteacher({Key? key}) : super(key: key);

  @override
  State<jadwalteacher> createState() => _jadwalteacherState();
}

class _jadwalteacherState extends State<jadwalteacher> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    DateTime dateToday = new DateTime.now();
    String date = DateFormat.yMMMMd().format(dateToday);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: _formKey,
      body: Container(
        width: size.width * 1,
        color: Colors.white,
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
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              )),
            ),
            Container(
              width: size.width * 0.9,
              child: TextFormField(
                textAlign: TextAlign.center,
                decoration: new InputDecoration(
                  hintText: "Masukan NIP",
                  enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xFFDC433E), width: 4)),
                ),
                onFieldSubmitted: (value) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => teacher()));
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
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Container(
                width: size.width * 0.9,
                decoration: BoxDecoration(
                    color: Colors.white,
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
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Column(
                    children: [
                      Text(
                        "Jam - 00  >   07.00 - 07.30",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Jam - 01  >   07.30 - 08.00",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Jam - 02  >   08.00 - 08.30",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Jam - 03  >   08.30 - 09.00",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Jam - 04  >   09.00 - 09.30",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Jam - 05  >   09.30 - 10.00",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Jam - 06  >   10.00 - 10.30",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Jam - 07  >   10.30 - 11.00",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Jam - 08  >   11.00 - 11.30",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
