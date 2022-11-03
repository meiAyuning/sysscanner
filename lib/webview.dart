import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:permission_handler/permission_handler.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Permission.camera.request();
  await Permission.microphone.request();

  runApp(WebViewPage());
}

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
          title: const Text('Absensi Siswa'),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: new WebView(
            initialUrl:
                "https://presensipkl.smkniu.sch.id/mGvwLJfkc4zOJ7As9eEvA==/",
            javascriptMode: JavascriptMode.unrestricted));
  }
}
