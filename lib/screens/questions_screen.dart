import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';

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
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Esta é uma pergunta de teste',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          AnswerButton(
            answerText: 'Oi',
          ),
          Padding(
            padding: EdgeInsets.all(4.0),
            child: AnswerButton(
              answerText: 'Oi',
            ),
          ),
          Padding(
            padding: EdgeInsets.all(4.0),
            child: AnswerButton(
              answerText: 'Oi',
            ),
          ),
          Padding(
            padding: EdgeInsets.all(4.0),
            child: AnswerButton(
              answerText: 'Oi',
            ),
          ),
        ],
      ),
    );
  }
}
