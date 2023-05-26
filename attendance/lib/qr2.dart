// import 'package:flutter/material.dart';
// import 'package:qrscan/qrscan.dart' as scanner;
// import 'package:http/http.dart' as http;
//
// class ScanQRCode extends StatefulWidget {
//   @override
//   _ScanQRCodeState createState() => _ScanQRCodeState();
// }
//
// class _ScanQRCodeState extends State<ScanQRCode> {
//   String _result;
//
//   Future<void> _scanQRCode() async {
//     String result = await scanner.scan();
//     setState(() {
//       _result = result;
//     });
//
//     // Send data to PHP script
//     Uri url = Uri.parse('http://your-php-script-url-here.php');
//     http.Response response = await http.post(url, body: {'data': _result});
//
//     // Fetch data from MySQL database based on received data
//     // You'll need to write your own PHP script to do this
//
//     // Send fetched data back to Flutter code
//     setState(() {
//       // Update the UI with the fetched data
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Scan QR Code'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             _result != null
//                 ? Text(
//               'Result: $_result',
//               style: TextStyle(fontSize: 16),
//             )
//                 : Container(),
//             SizedBox(height: 16),
//             ElevatedButton(
//               onPressed: _scanQRCode,
//               child: Text('Scan QR Code'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
