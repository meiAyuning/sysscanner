import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget {
  WebViewPage({Key? key}) : super(key: key);

  @override
  State<WebViewPage> createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new WebView(
          initialUrl:
              "https://presensipkl.smkniu.sch.id/mGvwLJfkc4zOJ7As9eEvA==/",
          javascriptMode: JavascriptMode.unrestricted),
    );
  }
}
