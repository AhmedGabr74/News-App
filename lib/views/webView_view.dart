import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatelessWidget {
  final String url;

  const WebViewScreen({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WebViewController webViewController = WebViewController();
    return Scaffold(
        appBar: AppBar(
          title: const Text('News Details'),
        ),
        body: WebViewWidget(
          controller: webViewController
            ..loadRequest(
              Uri.parse(url),
            ),
        )
        // WebView(
        //   initialUrl: url,
        //   javascriptMode: JavascriptMode.unrestricted,
        // ),
        );
  }
}


