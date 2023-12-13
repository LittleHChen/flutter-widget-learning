import 'package:flutter/material.dart';
import 'package:flutter_widget_learning/pages/home.dart';
// getX
import 'package:get/get.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
    );
  }
}
