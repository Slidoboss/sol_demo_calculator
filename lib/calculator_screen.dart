import 'package:flutter/material.dart';
import 'package:sol_demo_calculator/calculator_buttons.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() {
    return _CalculatorScreen();
  }
}

class _CalculatorScreen extends State<CalculatorScreen> {
  int? calculationResult;
  Color _operatorButtonColor = Colors.blue.shade400;
  Color neutralButtonColor = const Color.fromARGB(255, 37, 37, 37);
  Color _numberButtonColor = Colors.black;
  Color _numberTextColor = Colors.white;

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 80.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: FilledButton(
                    style: FilledButton.styleFrom(
                      backgroundColor: const Color.fromARGB(190, 255, 255, 255),
                    ),
                    onPressed: () {},
                    child: Text(
                      'History',
                      style: GoogleFonts.lato(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            Text(
              'Solving 5+5',
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(206, 255, 255, 255),
                fontSize: 25.0,
              ),
            ),
            Text("Result = 10",
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                )),
            const SizedBox(height: 10),
            // const CalculatorButtons(),
            Padding(
              padding: const EdgeInsets.only(top: 90),
              child: Container(
                width: 500.0,
                height: 580.0,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CalculatorButtons('C',
                              buttonTextColor: Colors.red.shade400,
                              buttonColor: neutralButtonColor),
                          CalculatorButtons(
                            '+|-',
                            buttonTextColor: Colors.blue.shade300,
                            buttonColor: neutralButtonColor,
                          ),
                          CalculatorButtons(
                            '%',
                            buttonTextColor: Colors.blue.shade300,
                            buttonColor: neutralButtonColor,
                          ),
                          CalculatorButtons(
                            '/',
                            buttonTextColor: Colors.white,
                            buttonColor: _operatorButtonColor,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          CalculatorButtons('7',
                              buttonTextColor: _numberTextColor,
                              buttonColor: _numberButtonColor),
                          CalculatorButtons(
                            '8',
                            buttonTextColor: _numberTextColor,
                            buttonColor: _numberButtonColor,
                          ),
                          CalculatorButtons(
                            '9',
                            buttonTextColor: _numberTextColor,
                            buttonColor: _numberButtonColor,
                          ),
                          CalculatorButtons(
                            'x',
                            buttonTextColor: Colors.white,
                            buttonColor: _operatorButtonColor,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          CalculatorButtons('4',
                              buttonTextColor: _numberTextColor,
                              buttonColor: _numberButtonColor),
                          CalculatorButtons(
                            '5',
                            buttonTextColor: _numberTextColor,
                            buttonColor: _numberButtonColor,
                          ),
                          CalculatorButtons(
                            '6',
                            buttonTextColor: _numberTextColor,
                            buttonColor: _numberButtonColor,
                          ),
                          CalculatorButtons(
                            '-',
                            buttonTextColor: Colors.white,
                            buttonColor: _operatorButtonColor,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          CalculatorButtons('1',
                              buttonTextColor: _numberTextColor,
                              buttonColor: _numberButtonColor),
                          CalculatorButtons(
                            '2',
                            buttonTextColor: _numberTextColor,
                            buttonColor: _numberButtonColor,
                          ),
                          CalculatorButtons(
                            '3',
                            buttonTextColor: _numberTextColor,
                            buttonColor: _numberButtonColor,
                          ),
                          CalculatorButtons(
                            '+',
                            buttonTextColor: Colors.white,
                            buttonColor: _operatorButtonColor,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          CalculatorButtons(
                            '0',
                            buttonTextColor: _numberTextColor,
                            buttonColor: _numberButtonColor,
                          ),
                          CalculatorButtons(
                            '.',
                            buttonTextColor: _numberTextColor,
                            buttonColor: _numberButtonColor,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: SizedBox(
                              height: 85,
                              width: 170,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green.shade300,
                                  foregroundColor: Colors.white,
                                  elevation: 4,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                ),
                                child: Text(
                                  '=',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.lato(
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
