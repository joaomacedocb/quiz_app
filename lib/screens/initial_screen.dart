import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen(this.startQuiz,{super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Image(
              width: 280,
              image: AssetImage('assets/images/quiz-logo.png'),
            ),
            Text(
              'Teste este quiz sobre a nova versão!',
              style: GoogleFonts.dosis(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
              ),
            OutlinedButton.icon(
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text('Começar o quiz'),
              onPressed: startQuiz,
            )
          ],
        ),
    );
  }
}
