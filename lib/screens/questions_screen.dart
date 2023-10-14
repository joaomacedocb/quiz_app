import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Esta é uma pergunta de teste',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Answer 1.'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Answer 1.'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Answer 1.'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Answer 1.'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Answer 1.'),
            ),
          ),
        ],
      ),
    );
  }
}
