import 'package:attendance/QrScanner.dart';
import 'package:flutter/material.dart';

class optionmenu extends StatefulWidget {
  const optionmenu({Key? key}) : super(key: key);

  @override
  State<optionmenu> createState() => _optionmenuState();
}

class _optionmenuState extends State<optionmenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Color.fromRGBO(7, 20, 48, 1),
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Image.asset('assets/susipwinlogo.png'),
        ),
        // title: Text("QR scanner"),
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => QrScanner()),
              );
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
              child: Container(
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(7, 20, 48, 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(90, 50, 90, 50),
                  child: Column(
                    children: [
                      Icon(
                        Icons.qr_code,
                        color: Colors.white,
                        size: 100,
                      ),
                      Text(
                        "Get Attendance",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
            child: Container(
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromRGBO(7, 20, 48, 1),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(90, 50, 90, 50),
                child: Column(
                  children: [
                    Icon(
                      Icons.payment_rounded,
                      color: Colors.white,
                      size: 100,
                    ),
                    Text(
                      "Pay ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container()
        ],
      ),
    );
  }
}
