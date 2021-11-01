import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'ui/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MeTube',
      theme: ThemeData(
        primarySwatch: Colors.red,
        scaffoldBackgroundColor: hexToColor("#f5f5f6")
      ),
      home: MyHomePage(title: 'MeTube'),
    );
  }

  Color hexToColor(String code) {
    return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }
}
