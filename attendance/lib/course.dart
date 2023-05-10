import 'package:attendance/QrScanner.dart';
import 'package:attendance/grade.dart';
import 'package:attendance/main.dart';
import 'package:attendance/optionmenu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:flutter_session_manager/flutter_session_manager.dart';

class Course extends StatelessWidget {

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
            padding: const EdgeInsets.only(left: 10),
            child: Image.asset('assets/susipwinlogo.png'),
          ),
          // title: Text("QR scanner"),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                GestureDetector(
                  onTap: () async {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => QrScanner()));
                    String datetime = DateTime.now().toString();
                    print(datetime);
                    dynamic id = await SessionManager().get("name");
                    print(id);
                    print("Course 00000000 clicked");
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.deepPurpleAccent,
                      ),
                      height: 100.0,
                      // height: 100,
                      // width: double.infinity,
                      // color: Colors.green,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Information communication technology",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                children: [
                                  Text("Teacher "),
                                  Text("J.M.A.S. Jayasooriya"),
                                ],
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => optionmenu()));
                    String datetime = DateTime.now().toString();
                    print(datetime);
                    print("Course 3 clicked");
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.green,
                      ),
                      height: 100.0,
                      // height: 100,
                      // width: double.infinity,
                      // color: Colors.green,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Science for technology",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                children: [
                                  Text("Teacher  "),
                                  Text("J.M.A.S. Jayasooriya"),
                                ],
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => QrScanner()));
                    String datetime = DateTime.now().toString();
                    print(datetime);
                    print("Course 3 clicked");
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.redAccent,
                      ),
                      height: 100.0,
                      // height: 100,
                      // width: double.infinity,
                      // color: Colors.green,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Engineering technology",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                children: [
                                  Text("Teacher  "),
                                  Text("J.M.A.S. Jayasooriya"),
                                ],
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => QrScanner()));
                    String datetime = DateTime.now().toString();
                    print(datetime);
                    print("Course 3 clicked");
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.green,
                      ),
                      height: 100.0,
                      // height: 100,
                      // width: double.infinity,
                      // color: Colors.green,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Science for technology",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                children: [
                                  Text("Teacher  "),
                                  Text("J.M.A.S. Jayasooriya"),
                                ],
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Grade()));
                    String datetime = DateTime.now().toString();
                    print(datetime);
                    print("Course 3 clicked");
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.blue,
                      ),
                      height: 100.0,
                      // height: 100,
                      // width: double.infinity,
                      // color: Colors.green,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Biosystem technology",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                children: [
                                  Text("Teacher  "),
                                  Text("J.M.A.S. Jayasooriya"),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
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
          selectedIndex: 1,
        ),
      ),
    );
  }
}
