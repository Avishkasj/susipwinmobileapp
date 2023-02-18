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
        backgroundColor: Colors.yellow[400],
        appBar: AppBar(
          title: Text("QR scanner"),
        ),
        body: Center(
          child: Column(
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>QrScanner()));
                  print("Course 1 clicked");
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 70,
                    width: double.infinity,
                    color: Colors.green,
                    child: Center(
                      child: Text("Course 1"),
                    ),
                  ),
                ),
              ),


              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>QrScanner()));
                  print("Course 2 clicked");

                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 70,
                    width: double.infinity,
                    color: Colors.green,
                    child: Center(
                      child: Text("Course 2"),
                    ),
                  ),
                ),
              ),

              GestureDetector(
                onTap: (){
                  String datetime = DateTime.now().toString();
                  print(datetime);
                  print("Course 3 clicked");
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 70,
                    width: double.infinity,
                    color: Colors.green,
                    child: Center(
                      child: Text("Course 3"),
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
