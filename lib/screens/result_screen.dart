import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Container(
        margin: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 120,
            bottom: 120,
          ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('You have answred x of y questions correctly.',
            
            ),
            const SizedBox(
              height: 30,
            ),
            const Text('List of Awnswers'),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Restart quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
