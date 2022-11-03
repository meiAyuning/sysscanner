import 'package:flutter/material.dart';
import 'package:sysscanner/splashscreen.dart';
import 'package:permission_handler/permission_handler.dart';

void main() {
  // var cameraStatus = await Permission.camera.status;
  // var microphoneStatus = await Permission.microphone.status;

  // print(cameraStatus);
  // print(microphoneStatus);

  // if (!cameraStatus.isGranted) await Permission.camera.request();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Presensi Siswa',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: SplashScreenPage(),
    );
  }
}
