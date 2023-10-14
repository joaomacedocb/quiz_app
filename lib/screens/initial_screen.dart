import 'package:flutter/material.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen(this.startQuiz,{super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Image(
              width: 280,
              color: Color.fromARGB(255, 188, 172, 255),
              image: AssetImage('assets/images/quiz-logo.png'),
            ),
            const Text(
              'Learn Flutter with this quiz app!',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            OutlinedButton.icon(
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text('Start quiz'),
              onPressed: startQuiz,
            )
          ],
        ),
    );
  }
}
