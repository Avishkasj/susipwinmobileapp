import 'package:attendance/QrScanner.dart';
import 'package:attendance/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class Course extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "screen 2",
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Image.asset('assets/susipwinlogo.png'),
          ),
          // title: Text("QR scanner"),
        ),
        body: Center(
          child: Column(
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>QrScanner()));
                  String datetime = DateTime.now().toString();
                  print(datetime);
                  print("Course 3 clicked");
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
                            child: Text("Information communication technology",
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
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>QrScanner()));
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
                            child: Text("Science for technology",
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
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>QrScanner()));
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
                            child: Text("Engineering technology",
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
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>QrScanner()));
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
                           child: Text("Biosystem technology",
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
    );
  }
}
