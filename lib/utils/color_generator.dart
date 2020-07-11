import 'dart:math';

import 'package:flutter/material.dart';

class RandomColorGenerator {
  Random _random = Random();

  ///Generate random color, with opacity always equal to 1
  Color generateRandomColor() {
    Color result = Color.fromRGBO(
      _generateRandomNumber(),
      _generateRandomNumber(),
      _generateRandomNumber(),
      1,
    );

    return result;
  }

  //generate random number from 0 to 255
  int _generateRandomNumber() {
    int result = _random.nextInt(255);

    return result;
  }
}
