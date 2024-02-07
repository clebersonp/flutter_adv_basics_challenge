import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Learn Flutter the fun way!",
            style: GoogleFonts.lato(
              fontSize: 26,
              color: const Color.fromARGB(255, 188, 194, 246),
            ),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Answer 1"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Answer 2"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Answer 3"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Answer 4"),
          ),
        ],
      ),
    );
  }
}
