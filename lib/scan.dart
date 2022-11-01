// import 'package:flutter/material.dart';
// import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
// import 'package:flutter/services.dart';

// class ScanBarPage extends StatefulWidget {
//   ScanBarPage({Key? key}) : super(key: key);

//   @override
//   State<ScanBarPage> createState() => _ScanBarPageState();
// }

// class _ScanBarPageState extends State<ScanBarPage> {
//   String barcode = "";

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Absensi Masuk'),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget> [
//               RaisedButton(
//                 child: Text('Scan'),
//                 onPressed: () async {
//                   try {
//                     String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode('#ff6666','Cancel', true, ScanMode.QR);
//                     setState(() {
//                       this.barcode = barcodeScanRes;
//                     });
//                   } on PlatformException catch (error) {
//                     if (error.code == FlutterBarcodeScanner.scanBarcode('#ff6666','Cancel', true, ScanMode.QR)) {
//                       setState(() {
//                         this.barcode = 'Izin kamera tidak diizinkan oleh si pengguna';
//                       });
//                     } else {
//                       setState(() {
//                         this.barcode = 'Error : $error';
//                       });
//                     }
//                   }
//                 },
//               ),
//               Text(
//                 'Result : $barcode',
//                 textAlign: TextAlign.center,
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }