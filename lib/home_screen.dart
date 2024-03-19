import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const String imageLocation = "lib/assets/images/calculator_logo.png";

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.launchCalculator});

  final Function() launchCalculator;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            imageLocation,
            width: 150,
          ),
          const SizedBox(height: 20),
          Text(
            'Welcome to my demo calculator project',
            textAlign: TextAlign.center,
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 40),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.black,
              backgroundColor: Colors.white, 
            ),
            onPressed: launchCalculator,
            child: const Text(
              'Proceed',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
