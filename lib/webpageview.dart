import 'dart:async';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';



class WebPageView extends StatefulWidget {
  @override
  _WebPageViewState createState() => _WebPageViewState();
}

class _WebPageViewState extends State<WebPageView> {
  final Completer<WebViewController> _controller =
  Completer<WebViewController>();

  @override
  void initState() {
    super.initState();
    // if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Duat Browser'),
        actions: <Widget>[
        ],
      ),
      body: Builder(builder: (BuildContext context) {
        return WebView(
          initialUrl: 'www.google.ca',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webViewController) {
            _controller.complete(webViewController);
          },
          onPageStarted: (String url) {
            print('Page loading: $url');
          },
          onPageFinished: (String url) {
            print('Page loading finished: $url');
          },
          gestureNavigationEnabled: true,
        );
      }),
    );
  }

}