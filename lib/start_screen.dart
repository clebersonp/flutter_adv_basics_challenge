import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 78, 61, 246),
            Color.fromARGB(255, 70, 91, 140),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset(
              "assets/images/quiz-logo.png",
              width: 300,
            ),
            const SizedBox(height: 28),
            Text(
              "Learn Flutter the fun way!",
              style: GoogleFonts.lato(
                fontSize: 26,
                color: const Color.fromARGB(255, 188, 194, 246),
              ),
            ),
            const SizedBox(height: 42),
            OutlinedButton(
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
              child: Text("Start Quiz", style: GoogleFonts.lato()),
            ),
          ],
        ),
      ),
    );
  }
}
