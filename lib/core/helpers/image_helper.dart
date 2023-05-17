import 'package:flutter/material.dart';

class ImageHelper {
  static Widget loadFromAsset(
    String imageFilePath, {
    double? width,
    double? height,
    BorderRadius? borderRadius,
    BoxFit? fit,
    Color? color,
    Alignment? alignment,
  }) {
    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.zero,
      child: Image.asset(
        imageFilePath,
        width: width,
        height: height,
        fit: fit ?? BoxFit.contain,
        color: color,
        alignment: alignment ?? Alignment.center,
      ),
    );
  }
}
