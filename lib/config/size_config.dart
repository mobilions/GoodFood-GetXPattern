import 'package:flutter/material.dart';

class SizeConfig {
  late MediaQueryData _mediaQueryData;
  static double? deviceWidth;
  static double? deviceHeight;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    deviceWidth = _mediaQueryData.size.width;
    deviceHeight = _mediaQueryData.size.height;
  }
}

double getProportionateScreenHeight(double inputHeight) {
  double? screenHeight = SizeConfig.deviceHeight;
  // 812 is the layout height that designer use
  return (inputHeight / 812.0) * screenHeight!;
}

// Get the proportionate height as per screen size
double getProportionateScreenWidth(double inputWidth) {
  double? screenWidth = SizeConfig.deviceWidth;
  // 375 is the layout width that designer use
  return (inputWidth / 375.0) * screenWidth!;
}

double getProportionalFontSize(double fontSize) {
  double finalFontSize = fontSize;
  double? screenWidth = SizeConfig.deviceWidth;
  finalFontSize = (finalFontSize * screenWidth!) / 375.0;
  return finalFontSize;
}
