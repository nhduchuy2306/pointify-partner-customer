import 'package:flutter/material.dart';

class ColorPalette {
  static const Color primaryColor = Color(0xffFFFFFF);
  static const Color buttonColor = Color(0xff2D3648);
  static const Color loginButtonColor = Color.fromARGB(255, 80, 183, 239);

  static const Color secondColor = Color(0xff8F678E);
  static const Color yellowColor = Color(0xffFE9C5E);

  static const Color deviderColor = Color(0xFFE5E7EB);
  static const Color text1Color = Color(0xFF323B4B);
  static const Color subTitleColor = Color(0xFF838383);
  static const Color backgroundScaffoldColor = Color(0xFFF2F2F2);
}

class Gradients {
  static const Gradient defaultGradientBackground = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomLeft,
      colors: [
        ColorPalette.secondColor,
        ColorPalette.primaryColor,
      ]);
}
