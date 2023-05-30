import 'package:attendance/LoginPage.dart';
import 'package:attendance/QrScanner.dart';
import 'package:attendance/pay.dart';
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
      body: SingleChildScrollView(
        child: Column(
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
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => pay()),
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
            ),

            Container(

            ),

            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                width: 100, // Set the desired width of the container
                // Container properties
                child: FloatingActionButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>LoginPage()),
                    );
                    // Handle the FAB button press
                  },
                  child: Icon(Icons.logout), // Set the desired icon for the FAB
                  backgroundColor: Colors.red, // Set the desired background color for the FAB
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40), // Set the desired border radius for the button shape
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
