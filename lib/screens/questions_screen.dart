import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/dumb_questions.dart';

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
    final currentQuestion = questions[0];

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(
            height: 150,
          ),
          Text(
            currentQuestion.text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 22,
            ),
          ),
          const SizedBox(
            height: 22,
          ),
          ...currentQuestion.answers.map((answer) {
            return (AnswerButton(
              answerText: answer, onTap: () {}));
            }
          ),
          const SizedBox(
            height: 150,
          ),
        ],
      ),
    );
  }
}
