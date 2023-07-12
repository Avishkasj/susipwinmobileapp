import 'package:attendance/main.dart';
import 'package:attendance/optionmenu.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

final String date = DateTime.now().toString();
String cdate = DateFormat("yyyy-MM-dd").format(DateTime.now());
String? name;
String? sgender;
String? uid;
String? cname2;
String? cname;
List<String> myList = [];
String? selectedCourse;
String? selectedOption;

class ManualAdd extends StatelessWidget {
  const ManualAdd({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // if (selectedOption != null) {
    //   // Use conditional statement to check if value is not null
    //   WidgetsBinding.instance.addPostFrameCallback((_) {
    //     showModalBottomSheet<void>(
    //       context: context,
    //       builder: (BuildContext context) {
    //         return Container(
    //           height: 300,
    //           child: Column(
    //             children: [
    //               TextButton(
    //                 onPressed: () {
    //                   selectedOption = null;
    //                   // Your onClick action goes here
    //                 },
    //                 child: Text('Click me!', style: TextStyle(fontSize: 20)),
    //                 style: TextButton.styleFrom(
    //                   primary: Colors.blue,
    //                   padding: EdgeInsets.all(16.0),
    //                 ),
    //               ),
    //
    //             ],
    //           ),
    //           // Add your content here
    //         );
    //       },
    //     );
    //   });
    // }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
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

  // Future<void> addAtt() async {
  //   print("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ $selectedOption @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
  // var url = Uri.parse('https://api.encode99.com.lk/susipwinapi/addattendances.php');
  // var body = {'data': selectedOption, 'name': uid};
  //
  //
  //
  // try {
  // var response = await http.post(url, body: body);
  //
  // if (response.statusCode == 200) {
  // var data = jsonDecode(response.body);
  // print(data);
  // } else {
  // print('Failed to add attendance. Status code: ${response.statusCode}');
  // }
  // } catch (e) {
  // print('Error adding attendance: $e');
  // }
  // }

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
  set setName(String value) {
    setState(() {
      name = value;
    });
  }

  set setSgender(String value) {
    setState(() {
      sgender = value;
    });
  }

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

    void _onQRViewCreated(QRViewController controller) async {
      this.controller = controller;
      var responseData;
      String nn;

      controller.scannedDataStream.listen((scanData) async {
        // Pause the camera until the result is processed.
        await controller.pauseCamera();

        // Send the scan data to the PHP backend.
        var response = await http.post(
            Uri.parse('https://api.encode99.com.lk/susipwinapi/qr.php'),
            body: {'data': scanData.code});

        // Handle the response.
        if (response.statusCode == 200) {
          // Decode the JSON data from the response body.
          final decodedData = jsonDecode(response.body);

          for (var data in decodedData) {
            // Access the properties of each object
            setState(() {
              name = data['username'];
              sgender = data['gender'];
              uid = data['id'];
            });

            // List<String> courseList = [];
            //
            // for (var data2 in decodedData) {
            //   // Access the properties of each object
            //   setState(() {
            //     String course = data['coursename'];
            //     courseList.add(course);
            //   });
            // }

            // Do something with the properties (e.g. add to a list, display on screen)
            // ScaffoldMessenger.of(context).showSnackBar(
            //   SnackBar(
            //     content: Text('Name: $name'),
            //   ),
            // );

            // ScaffoldMessenger.of(context).showSnackBar(
            //   SnackBar(
            //     content: Text('Gender: $sgender'),
            //   ),
            // );
          }

          // Show a success message.
          // ScaffoldMessenger.of(context).showSnackBar(
          //   SnackBar(
          //     content: Text('QR code scanned successfully. Decoded data: '),
          //   ),
          // );

          //stage 222222222
          var response2 = await http.post(
              Uri.parse('https://api.encode99.com.lk/susipwinapi/course.php'),
              body: {'data': scanData.code});

          // Handle the response.
          if (response2.statusCode == 200) {
            myList.clear();
            // Decode the JSON data from the response body.
            final decodedData = jsonDecode(response2.body);

            for (var data2 in decodedData) {
              // Access the properties of each object
              String cname = data2['coursename'];

              // Add the value of cname to the list using the add method
              myList.add(cname);
            }

            // Update the state with the list of course names
            setState(() {});

            // MaterialPageRoute(builder: (context) => addPostFrameCallback()),

            // Show a success message.
            // ScaffoldMessenger.of(context).showSnackBar(
            //   SnackBar(
            //     content: Text('All courses: $myList'),
            //   ),
            // );
          }

          //stage 33
          // var response3 = await http.post(
          //     Uri.parse('https://api.encode99.com.lk/susipwinapi/payment.php'),
          //     body: {'data': selectedOption});
          //
          // // Handle the response.
          // if (response3.statusCode == 200) {
          //   // Decode the JSON data from the response body.
          //   final decodedData3 = jsonDecode(response3.body);
          //
          //
          //
          //   // Show a success message.
          //   ScaffoldMessenger.of(context).showSnackBar(
          //     SnackBar(
          //       content: Text('All courses: $decodedData3'),
          //     ),
          //   );
          // } else {
          //   // Show an error message.
          //   ScaffoldMessenger.of(context).showSnackBar(
          //     SnackBar(
          //       content: Text('Failed to scan QR code. Please try again.$response3'),
          //     ),
          //   );
          // }
        } else {
          // Show an error message.
          // ScaffoldMessenger.of(context).showSnackBar(
          //   SnackBar(
          //     content: Text('Failed to scan QR code. Please try again.'),
          //   ),
          // );
        }

        // Resume the camera.
        await controller.resumeCamera();
      });
    }

    return Scaffold(
      backgroundColor: Color.fromRGBO(7, 20, 48, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(7, 20, 48, 1),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            myList = [];
            uid = "";
            name = "";

            setState(() {
              selectedOption = null;
            });

            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => optionmenu()),
            );
          },
        ),
      ),
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
            padding: const EdgeInsets.all(15.0),
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

          //Corse dropdown show mylist data

          // Text(
          //   'Selected Option: $selectedOption',
          //   style: TextStyle(fontSize: 20),
          // ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.redAccent,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: DropdownButton<String>(
                value: selectedOption,
                items: myList.map((String courseName) {
                  return DropdownMenuItem<String>(
                    value: courseName,
                    child: Text(
                      courseName,
                      style: TextStyle(
                        color: Colors.redAccent,
                      ),
                    ),
                  );
                }).toList(),
                onChanged: (String? value) {
                  setState(() {
                    selectedOption = value ?? '';
                  });
                },
                isExpanded: true,
                underline: SizedBox(),
              ),
            ),
          ),

          // Text('Name: $selectedCourse'),
          // DropdownButton<String>(
          //   value: selectedCourse,
          //   items: myList.map((String courseName) {
          //     return DropdownMenuItem<String>(
          //       value: courseName,
          //       child: Text(courseName),
          //     );
          //   }).toList(),
          //   onChanged: (String? value) {
          //     setState(() {
          //       selectedCourse = value;
          //     });
          //   },
          // ),

          Expanded(
            flex: 1,
            child: Center(
              child: (result != null)
                  ? Text(
                      'Barcode Type: ${describeEnum(result!.format)}   Data: ${result!.code}',
                    )
                  : Text(
                      'Name: $name',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
            ),
          ),

          Column(
            children: [
              // Add other widgets here

              if (selectedOption != null)
                Padding(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.redAccent,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    onPressed: () async {
                      var response = await http.post(
                        Uri.parse(
                            'https://api.encode99.com.lk/susipwinapi/payment.php'),
                        body: {'data': selectedOption, 'name': uid},
                      );

                      print(
                          "-------------------------------$selectedOption---------------------------");
                      print(
                          "-------------------------------$name---------------------------");

                      if (response.statusCode == 200) {
                        var data = jsonDecode(response.body);
                        print(
                            "############################  $data #########################################");

                        Icon paymentIcon;
                        Color containerColor;

                        if (data == 'Paid') {
                          paymentIcon = Icon(
                            Icons.check_circle_outline,
                            size: 52,
                            color: Colors.white,
                          );
                          containerColor = Colors.green;
                        } else {
                          // Use a different icon for other cases
                          paymentIcon = Icon(
                            Icons.close,
                            size: 52,
                            color: Colors.white,
                          );
                          containerColor = Colors.red;
                        }

                        showModalBottomSheet<void>(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: 700,
                              child: Column(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(250, 0, 0, 0),
                                    child: TextButton(
                                      child: Text('Close'),
                                      onPressed: () => Navigator.pop(context),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: containerColor,
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: paymentIcon,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: Text("Student Payment Status"),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: Text(data),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 50),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        ElevatedButton(
                                          // Add your first button onPressed logic here
                                          onPressed: () =>
                                              Navigator.pop(context),
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                    Color>(Colors.blue),
                                          ),
                                          child: Text('Cancel'),
                                        ),
                                        SizedBox(width: 20),
                                        ElevatedButton(
                                          onPressed: () {
                                            addAtt(context);
                                          },
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                    Color>(Colors.green),
                                          ),
                                          child: Text('Add'),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                                'Failed to fetch course data. Please try again.'),
                          ),
                        );
                      }
                    },
                    child: Text(
                      "Done",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              // Use conditional statement to check if value is not null
            ],
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}

Future<void> addAtt(BuildContext context) async {
  var url =
      Uri.parse('https://api.encode99.com.lk/susipwinapi/addattendances.php');
  var body = {'data': selectedOption, 'name': uid};

  print("000000000000 $name 00000000000");
  print(
      "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ $selectedOption @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");

  try {
    var response = await http.post(url, body: body);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      print(data);
      if (data == 'use') {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Status'),
              content: Row(
                children: [
                  Icon(
                    Icons.info,
                    size: 50,
                    color: Colors.red,
                  ),
                  SizedBox(width: 8),
                  Text('Already, Mark!'),
                ],
              ),
              actions: [
                TextButton(
                  child: Text('OK'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ManualAdd()),
                    );
                  },
                ),
              ],
            );
          },
        );
      } else if (data == 'Mark') {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Statu'),
              content: Row(
                children: [
                  Icon(
                    Icons.check_circle_outline,
                    size: 50,
                    color: Colors.green,
                  ),
                  SizedBox(width: 8),
                  Text('Successfully, Mark!'),
                ],
              ),
              actions: [
                TextButton(
                  child: Text('OK'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ManualAdd()),
                    );
                  },
                ),
              ],
            );
          },
        );
      }
    } else {
      print('Failed to add attendance. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error adding attendance: $e');
  }
}
