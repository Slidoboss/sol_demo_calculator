import 'package:flutter/material.dart';
import 'package:sol_demo_calculator/home_screen.dart';
import 'package:sol_demo_calculator/calculator_screen.dart';

final List<Color> gradientColors = [
  const Color.fromARGB(255, 75, 75, 75),
  const Color.fromARGB(255, 20, 20, 20),
];

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() {
    return _Calculator();
  }
}

class _Calculator extends State<Calculator> {
  var activeScreen = 'home-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'calculator-screen';
    });
  }

  @override
  Widget build(context) {
    //Change Screen.
    Widget currentScreen = HomeScreen(launchCalculator: switchScreen);
    if (activeScreen == 'calculator-screen') {
      currentScreen = const CalculatorScreen();
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: gradientColors,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: currentScreen,
        ),
      ),
    );
  }
}
