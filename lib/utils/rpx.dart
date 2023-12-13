// rpx转化工具类
import 'package:flutter/material.dart';

class Adaptation {
  static MediaQueryData _mediaQueryData = MediaQueryData(); // 媒体查询缓存对象
  static double screenWidth = 0.0; // 屏宽
  static double screenHeight = 0.0; // 屏高
  static double rpx = 0.0; // rpx缩放

  static void initialize(BuildContext context, {double standardWidth = 750}) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    rpx = screenWidth / standardWidth;
  }

  // 按照像素来设置
  static double setPx(double size) {
    return Adaptation.rpx * size * 2;
  }

  // 按照rxp来设置
  static double setRpx(double size) {
    return Adaptation.rpx * size;
  }
}

extension IntFit on int {
  double get rpx {
    return Adaptation.setRpx(this.toDouble());
  }
}

extension DoubleFit on double {
  double get rpx {
    return Adaptation.setRpx(this);
  }
}