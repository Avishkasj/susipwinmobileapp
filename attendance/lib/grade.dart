import 'package:attendance/QrScanner.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Grade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "screen 2",
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Color.fromRGBO(7, 20, 48, 1),
          leading: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Image.asset('assets/susipwinlogo.png'),
          ),
          // title: Text("QR scanner"),
        ),
        body: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => QrScanner()));
                      String datetime = DateTime.now().toString();
                      print(datetime);
                      print("Course 3 clicked");
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Container(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0),
                                    color: Colors.redAccent,
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 5.0,
                                    )),
                                height: 100,
                                width: 130,
                                child: Center(
                                  child: Column(
                                    children: [
                                      Icon(Icons.add_business),
                                      Text(
                                        "A/L",
                                        style: TextStyle(
                                          fontSize: 30,
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
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => QrScanner()));
                      String datetime = DateTime.now().toString();
                      print(datetime);
                      print("Course 4 clicked");
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Container(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0),
                                    color: Colors.redAccent,
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 5.0,
                                    )),
                                height: 100,
                                width: 130,
                                child: Center(
                                  child: Text(
                                    "O/L",
                                    style: TextStyle(
                                      fontSize: 30,
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
                ],
              ),


//second row


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => QrScanner()));
                      String datetime = DateTime.now().toString();
                      print(datetime);
                      print("Course 5 clicked");
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Container(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0),
                                    color: Colors.redAccent,
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 5.0,
                                    )),
                                height: 100,
                                width: 140,
                                child: Center(
                                  child: Column(
                                    children: [
                                      Icon(Icons.add_business),
                                      Text(
                                        "5",
                                        style: TextStyle(
                                          fontSize: 30,
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
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => QrScanner()));
                      String datetime = DateTime.now().toString();
                      print(datetime);
                      print("Course 6 clicked");
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0),
                                    color: Colors.redAccent,
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 5.0,
                                    )),
                                height: 100,
                                width: 140,
                                child: Center(
                                  child: Text(
                                    "6",
                                    style: TextStyle(
                                      fontSize: 30,
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
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: GNav(
          backgroundColor: Color.fromRGBO(7, 20, 48, 1),
          color: Colors.white,
          activeColor: Colors.white,
          tabs: [
            GButton(
              icon: Icons.home,
              text: ("Home"),
            ),
            GButton(
              icon: Icons.select_all,
              text: ("Courses"),
            ),
            GButton(
              icon: Icons.settings,
              text: ("Course"),
            ),
            GButton(
              icon: Icons.logout,
              text: "Log out",
            ),
          ],
        ),
      ),
    );
  }
}
