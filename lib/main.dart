import 'package:flutter/material.dart';

import './utils/rpx.dart';

void main() {
  runApp(MyApp());
}

final List<Color> colorList = [
  Colors.red,
  Colors.orange,
  Colors.green,
  Colors.purple,
  Colors.blue,
  Colors.yellow,
  Colors.pink,
  Colors.teal,
  Colors.deepPurpleAccent
];

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      home: AppMainPage(),
    );
  }
}

// Image.asset('assets/images/banner.png')
class AppMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Adaptation.initialize(context); // 初始化rpx
    return Material(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 422.rpx,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Flutter Widget Learning',
                  style: TextStyle(
                    color: Colors.black38,
                    fontFamily: 'Georgia',
                    fontSize: 18.0,
                  )),
              background: Image.asset(
                'assets/images/banner.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.all(40.rpx),
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 4.0,
              ),
              delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.cyan[100 * (index % 9)],
                  child: new Text('grid item $index'),
                );
              }, childCount: 30),
            ),
          ),
        ],
      ),
    );
  }
}
