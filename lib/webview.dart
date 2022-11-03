import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:permission_handler/permission_handler.dart';

class WebViewPage extends StatefulWidget {
  WebViewPage({Key? key}) : super(key: key);

  @override
  State<WebViewPage> createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Absensi Kehadiran Siswa'),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: new WebView(
          initialUrl:
              "https://presensipkl.smkniu.sch.id/mGvwLJfkc4zOJ7As9eEvA==/",
          javascriptMode: JavascriptMode.unrestricted,
        ));
  }
}

// checkpermission_opencamera() async {
//   var cameraStatus = await Permission.camera.status;
//   var microphoneStatus = await Permission.microphone.status;

//   print(cameraStatus);
//   print(microphoneStatus);

//   if (!cameraStatus.isGranted) await Permission.camera.request();
// }
