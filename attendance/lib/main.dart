import 'dart:convert';

import 'package:attendance/QrScanner.dart';
import 'package:attendance/api_connection.dart';
import 'package:attendance/course.dart';
import 'package:attendance/User.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
  const color = const Color(0x003679);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const login(),
    );
  }
}

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  var formkey = GlobalKey<FormState>();
  var emailcontroller = TextEditingController();
  var passwordcontroller = TextEditingController();

  Future<void> loginUserNow() async {
    try {
      final response = await http.post(
        Uri.parse('http://192.168.8.126/api_att/login.php'),
        body: {
          'user_email': emailcontroller.text.trim(),
          'user_password': passwordcontroller.text.trim(),
        },
      );


      if (response.statusCode == 200) {
        print('Response body: ${response.body}');
        print('test line-------------------');
        var responseData = json.decode(response.body);
        if (responseData['success']) {
          User user = User.fromJson(responseData);
          print('Login successful. User ID: ${user.id}');
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Course()),
          );
        } else {
          print('Login failed');
        }

      } else {
        throw Exception(
            'HTTP request failed with status ${response.statusCode}');
      }
    } catch (error) {
      print('An error occurred: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //welcome text
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Image(image: AssetImage('assets/susipwinlogo.png')),
                  ),
                  // SizedBox(
                  //   height: 30,
                  // ),
                  Text(
                    "Hello",
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Susipwin",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 30,
                  ),

                  //email
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.redAccent[200],
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: TextFormField(
                          controller: emailcontroller,
                          validator: (val) =>
                              val == "" ? "Please Enter E-mail" : null,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Email',
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  //password
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.redAccent[200],
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: TextFormField(
                          controller: passwordcontroller,
                          validator: (val) =>
                              val == "" ? "Please Enter Password" : null,
                          obscureText: true,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Password',
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  //button
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(12)),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                        ),
                        onPressed: () {
                          loginUserNow();
                        },
                        child: Text('LOG IN'),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  //become a member

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Not a member? .'),
                      Text(
                        'Register now',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
