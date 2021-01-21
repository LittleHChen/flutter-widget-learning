import 'package:flutter/material.dart';

import './utils/rpx.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Widget Learning'),
        ),
        body: Container(
          child: AppMainPage(),
        ),
      ),
    );
  }
}

// Image.asset('assets/images/banner.png')
class AppMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Adaptation.initialize(context); // 初始化rpx
    return Row(
      children: <Widget>[
        Container(
          child: Image.asset('assets/images/banner.png', width: 750.rpx, height: 422.rpx, fit: BoxFit.cover),
        ),
      ],
    );
  }
}
