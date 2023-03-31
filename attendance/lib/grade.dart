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
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Advance Level',
                            style: TextStyle(fontSize: 18),
                          ),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue,
                            ),
                            child: Icon(Icons.arrow_forward, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Ordaniry Level',
                            style: TextStyle(fontSize: 18),
                          ),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue,
                            ),
                            child: Icon(Icons.arrow_forward, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),



                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Grade 01',
                            style: TextStyle(fontSize: 18),
                          ),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue,
                            ),
                            child: Icon(Icons.arrow_forward, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),




                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Grade 02',
                            style: TextStyle(fontSize: 18),
                          ),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue,
                            ),
                            child: Icon(Icons.arrow_forward, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),



                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Grade 03',
                            style: TextStyle(fontSize: 18),
                          ),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue,
                            ),
                            child: Icon(Icons.arrow_forward, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),



                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Grade 04',
                            style: TextStyle(fontSize: 18),
                          ),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue,
                            ),
                            child: Icon(Icons.arrow_forward, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Grade 05',
                            style: TextStyle(fontSize: 18),
                          ),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue,
                            ),
                            child: Icon(Icons.arrow_forward, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Grade 06',
                            style: TextStyle(fontSize: 18),
                          ),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue,
                            ),
                            child: Icon(Icons.arrow_forward, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),



                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Grade 07',
                            style: TextStyle(fontSize: 18),
                          ),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue,
                            ),
                            child: Icon(Icons.arrow_forward, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),



                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Grade 08',
                            style: TextStyle(fontSize: 18),
                          ),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue,
                            ),
                            child: Icon(Icons.arrow_forward, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),



                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Grade 01',
                            style: TextStyle(fontSize: 18),
                          ),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue,
                            ),
                            child: Icon(Icons.arrow_forward, color: Colors.white),
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
