import 'package:flutter/material.dart';
import 'package:solid_software_test/styling/app_text_styles.dart';
import 'package:solid_software_test/utils/color_generator.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MainScreenBody(),
    );
  }
}

class MainScreenBody extends StatefulWidget {
  @override
  _MainScreenBodyState createState() => _MainScreenBodyState();
}

class _MainScreenBodyState extends State<MainScreenBody> {
  //Default background color
  Color _backgroundColor = Colors.green;
  RandomColorGenerator _colorGenerator = RandomColorGenerator();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() {
        _backgroundColor = _colorGenerator.generateRandomColor();
      }),
      child: Container(
        color: _backgroundColor,
        alignment: Alignment.center,
        child: Text(
          'Hey there',
          style: AppTextStyles.mainTextStyle,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
