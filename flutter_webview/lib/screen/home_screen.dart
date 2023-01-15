import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  WebViewController? webViewController;
  final homeUrl = 'https://yohanpro.com';

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('요한의 블로그입니다'),
        centerTitle: true,
        backgroundColor: Colors.black,
        actions: [
          IconButton(
              onPressed: () {
                webViewController!.loadUrl(homeUrl);
              },
              icon: Icon(Icons.home, color: Colors.white))
        ],
      ),
      body: WebView(
        onWebViewCreated: (WebViewController webViewController) {
          this.webViewController = webViewController;
        },
        initialUrl: 'https://yohanpro.com',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
