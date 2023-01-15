import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('요한의 블로그'),
        centerTitle: true,
        backgroundColor: Color(0xFF1E1E1E),
      ),
      body: WebView(
        initialUrl: 'https://yohanpro.com',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
