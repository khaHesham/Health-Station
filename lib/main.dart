import 'package:flutter/material.dart';
import'Input_page.dart';
import 'home_screen.dart';
import 'package:bmi_calculator/Notification_Api.dart';


const oldColor=Color(0xFF1D2136);

void main() => runApp(BMICalculator());


class BMICalculator extends StatefulWidget {
  @override
  _BMICalculatorState createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          color: Colors.black54,
        ),
        scaffoldBackgroundColor: Color(0xFF000000),
      ),
      home: LoadingScreen(),

    );
  }
}




