import 'package:attendance/LoginPage.dart';
import 'package:flutter/material.dart';

class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Image(image: AssetImage('assets/susipwinlogo.png')),
            ),
            // SizedBox(
            //   height: 30,
            // ),

            Center(
              child: Text(
                "Susipwin",
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(
              height: 30,
            ),

            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Text(
                  "If you need to register as staff you have to contact admin ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),

            Center(
              child: Text(
                "admin@susipwin.com",
                style: TextStyle(fontSize: 17,
                color: Colors.blueAccent),
              ),
            ),
            SizedBox(
              height: 30,
            ),

      Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LoginPage()),
                          );
                        },
                        child: Text('Back'),
                      ),
                    ),
                  ),

          ],
        ),
      ),
    );
  }
}
