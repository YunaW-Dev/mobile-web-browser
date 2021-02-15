
import 'package:flutter/material.dart';
import 'package:mobile_web_browser/webpageview.dart';

void main() => runApp(DrawApp());

class DrawApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WebPageView(),
    );
  }
}

