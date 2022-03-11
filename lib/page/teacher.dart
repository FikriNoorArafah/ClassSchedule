import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class teacher extends StatefulWidget {
  const teacher({Key? key}) : super(key: key);

  @override
  State<teacher> createState() => _teacherState();
}

class _teacherState extends State<teacher> {
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
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
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
                    padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                    child: Column(
                      children: [
                        Text(
                          "NIP : 198108052014071003",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Dhanang Fitra Riaji, S.Si. , MT",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Guru PWPB",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
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
                    padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                    child: Column(
                      children: [
                        Text(
                          "Jam Pertama",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "07.30 - 08.00",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "XII RPL A",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Lab Komputer 2",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
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
                    padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                    child: Column(
                      children: [
                        Text(
                          "Jam Kedua",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "08.00 - 08.30",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "XII RPL A",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Lab Komputer 2",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
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
                    padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                    child: Column(
                      children: [
                        Text(
                          "Jam Ketiga",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "08.30 - 09.00",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "XII RPL A",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Lab Komputer 2",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
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
                    padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                    child: Column(
                      children: [
                        Text(
                          "Jam Keempat",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "09.00 - 09.30",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "XII RPL A",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Lab Komputer 2",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
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
                    padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                    child: Column(
                      children: [
                        Text(
                          "Jam Kelima",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "09.30 - 10.00",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "XII RPL A",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Lab Komputer 2",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
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
                    padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                    child: Column(
                      children: [
                        Text(
                          "Jam Ke'enam",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "10.00 - 10.30",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "XII RPL A",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Lab Komputer 2",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
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
                    padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                    child: Column(
                      children: [
                        Text(
                          "Jam Ketujuh",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "10.30 - 11.00",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "XII RPL A",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Lab Komputer 2",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
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
                    padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                    child: Column(
                      children: [
                        Text(
                          "Jam Kedelapan",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "11.00 - 11.30",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "XII RPL A",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Lab Komputer 2",
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
      ),
    );
  }
}
