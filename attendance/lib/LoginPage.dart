import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _isLoading = false;
  String _errorMessage = '';

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _login() async {
    // Set the loading state
    setState(() {
      _isLoading = true;
      _errorMessage = '';
    });

    try {
      // Send a POST request to the PHP script
      final response = await http.post(
        Uri.parse('http://192.168.8.126/api_att/login.php'),
        body: {
          'email': _emailController.text.trim(),
          'password': _passwordController.text.trim(),
        },
      );

      // Decode the response JSON
      final data = json.decode(response.body);

      // Check if the login was successful
      if (data['success']) {
        // Navigate to the home page
        print("done");
      } else {
        // Set the error message
        setState(() {
          _errorMessage = data['message'];
        });
      }
    } catch (e) {
      // Set the error message
      setState(() {
        _errorMessage = 'An error occurred: $e';
      });
    } finally {
      // Set the loading state
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.all(16.0),
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Image(image: AssetImage('assets/susipwinlogo.png')),
            ),
            // SizedBox(
            //   height: 30,
            // ),
            Center(
              child: Text(
                "Hello",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Text(
                "Susipwin",
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(
              height: 30,
            ),


            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Container(
                child: TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(labelText: 'Email'),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if  (value! == null) {
                      print("enter email");
                      return 'Please enter your email.';
                    }
                    return null;
                  },
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Container(
                child: TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(labelText: 'Password'),
                  obscureText: true,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your password.';
                    }
                    return null;
                  },
                ),
              ),
            ),
            SizedBox(height: 16.0),

            Padding(
              padding: const EdgeInsets.fromLTRB(110, 0, 110, 0),
              child: ElevatedButton(
                child: _isLoading
                    ? CircularProgressIndicator()
                    : Text('Login'),
                onPressed: _isLoading ? null : _login,
              ),
            ),
            if (_errorMessage.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: Text(
                      _errorMessage,
                      style: TextStyle(
                        color: Theme.of(context).errorColor,
                        fontWeight: FontWeight.bold,
                      ),
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
