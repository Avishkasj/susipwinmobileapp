import 'package:flutter/material.dart';

void main() {
runApp(const MyApp());
}

class MyApp extends StatelessWidget {
const MyApp({super.key});

// This widget is the root of your application.
@override
Widget build(BuildContext context) {
return MaterialApp(
title: 'Flutter Demo',
theme: ThemeData(
primarySwatch: Colors.blue,
),
home: const Login(),
);
}
}


class Login extends StatefulWidget {
const Login({Key? key}) : super(key: key);

@override
State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: Colors.yellow[300],
body: SafeArea(
child: Center(
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Icon(Icons.adobe_sharp,
size: 100,),
//hello
Padding(
padding: const EdgeInsets.all(15.0),
child: Text(
"hello",
style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
),
),
SizedBox(
height: 10,
),
Text(
"Welcome and get attendance",
style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
),

              SizedBox(
                height: 50,
              ),

              //email

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.yellow[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
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
                      color: Colors.yellow[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
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
                height: 30,
              ),

              //need a member

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(color: Colors.black,
                  borderRadius: BorderRadius.circular(12)),
                  child: Center(
                    child: Text(
                      'Sing in',
                      style: TextStyle(color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20,),

              //not a member

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Not a member'),
                  Text('Register now',style:TextStyle(color: Colors.blue,),)
                ],
              ), 



            ],
          ),
        ),
      ),
    );
}
}
