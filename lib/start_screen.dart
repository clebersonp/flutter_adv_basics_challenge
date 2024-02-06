import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 300,
            color: Colors.white.withOpacity(0.4),
          ),
          const SizedBox(height: 80),
          Text(
            "Learn Flutter the fun way!",
            style: GoogleFonts.lato(
              fontSize: 26,
              color: const Color.fromARGB(255, 188, 194, 246),
            ),
          ),
          const SizedBox(height: 50),
          OutlinedButton.icon(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 188, 194, 246),
              textStyle: const TextStyle(
                fontSize: 18,
              ),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              side: const BorderSide(
                color: Color.fromARGB(255, 188, 194, 246),
              ),
            ),
            icon: const Icon(
              Icons.arrow_right_alt_outlined,
            ),
            label: Text(
              "Start Quiz",
              style: GoogleFonts.lato(),
            ),
          ),
        ],
      ),
    );
  }
}
