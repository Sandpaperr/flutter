import 'package:flutter/material.dart';
import 'input_page.dart';
void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // context.bmiPrimiaryColor;
    return MaterialApp(
      home: InputPage(),
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFF0A0E21),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreenAccent),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),

      ),
    );
  }
}

// extension BuilContextColor on BuildContext{
//   Color get bmiPrimiaryColor => BMIColors.primaryColor;
// }
//
// class BMIColors{
//   static Color primaryColor = Colors.red;
// }

