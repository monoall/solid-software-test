import 'package:flutter/material.dart';

abstract class AppTextStyles {
  static TextStyle get mainTextStyle => const TextStyle(
        fontSize: 100,
        fontWeight: FontWeight.w800,
        color: Colors.white,
      );
}
