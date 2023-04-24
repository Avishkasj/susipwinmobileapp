import 'package:attendance/main.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;


final String date = DateTime.now().toString();
String cdate = DateFormat("yyyy-MM-dd").format(DateTime.now());

class QrScanner extends StatelessWidget {
  const QrScanner({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'qr',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? controller;

  // In order to get hot reload to work we need to pause the camera if the platform
  // is android, or resume the camera if the platform is iOS.
  @override
  void reassemble() {
    super.reassemble();
    // if (Platform.isAndroid) {
    //   controller!.pauseCamera();
    // } else if (Platform.isIOS) {
    //   controller!.resumeCamera();
    // }
  }

  @override
  Widget build(BuildContext context) {
    Color getColor() {
      bool status = true;
      if (status == true) {
        return Colors.green;
      } else {
        return Colors.red;
      }
      ;
    }

    return Scaffold(
      backgroundColor: Color.fromRGBO(7, 20, 48, 1),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 5,
            child: QRView(
              key: qrKey,
              onQRViewCreated: _onQRViewCreated,
              overlay: QrScannerOverlayShape(
                borderLength: 20,
                borderWidth: 20,
                borderRadius: 10,
                borderColor: getColor(),
                cutOutSize: MediaQuery.of(context).size.width * 0.8,

              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Icon(
                      Icons.date_range,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Date: $cdate',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Text("Student Number: TG514"),
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: (result != null)
                  ? Text(
                      'Barcode Type: ${describeEnum(result!.format)}   Data: ${result!.code}',
                    )
                  : Text(
                      'Scan a code',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
            ),
          ),
          Container(
            child: Text("test"),
          )
        ],
      ),

      // bottomNavigationBar: GNav(
      //   backgroundColor: Color.fromRGBO(7, 20, 48, 1),
      //   color: Colors.white,
      //   activeColor: Colors.white,
      //   tabs: [
      //     GButton(
      //       icon: Icons.home,
      //       text: ("Home"),
      //     ),
      //     GButton(
      //       icon: Icons.stacked_bar_chart,
      //       text: ("Grade"),
      //     ),
      //     GButton(
      //       icon: Icons.settings,
      //       text: ("Course"),
      //     ),
      //     GButton(
      //       icon: Icons.logout,
      //       text: "Log out",
      //     ),
      //   ],
      // ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) async {
      setState(() {
        result = scanData;
      });

      // Send HTTP POST request to PHP script
      var url = Uri.parse('http://123.231.123.124/api_att/login.php');
      // Uri.parse('http://123.231.123.124/api_att/login.php'),
      var response = await http.post(url, body: {'code': result!.code});
      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');
    });
  }


  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
