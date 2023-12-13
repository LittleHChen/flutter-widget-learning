import 'package:flutter/material.dart';
// utils
import '../utils/rpx.dart';

class HomePage extends StatelessWidget {

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
              title: Text('Flutter Learning',
                  style: TextStyle(
                    color: Colors.black54,
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
                return ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.cyan[100 * (index % 9)]),
                  ),
                  onPressed: () => {
                    print('1111')
                  },
                  child: Text('grid item $index'),
                );
              }, childCount: 10),
            ),
          ),
        ],
      ),
    );
  }
}
