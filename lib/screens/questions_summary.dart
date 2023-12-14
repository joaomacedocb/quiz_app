import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 380,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 14.00),
                    child: Container(
                      height: 25,
                      width: 25,
                      alignment: Alignment.center,
                      // ignore: prefer_const_constructors
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(100.00)),
                        color: data['correct_answer'] == data['user_answer'] ? Colors.green : Colors.red,
                      ),
                      child: Text(
                        ((data['question_index'] as int) + 1).toString(),
                        style: GoogleFonts.dosis(
                          fontSize: 14,
                          color: const Color.fromARGB(255, 18, 2, 59),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data['question'] as String,
                          style: GoogleFonts.dosis(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Text(
                          data['correct_answer'] == data['user_answer'] ? 'Você acertou!' : 'Você errou!',
                          style: TextStyle(
                              color: data['correct_answer'] == data['user_answer'] ? Colors.green : Colors.red,
                              fontSize: 14),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Text(
                          'Resposta correta:',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 12),
                        ),
                        Text(
                          data['correct_answer'] as String,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 12),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Text(
                          'Sua resposta:',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 12),
                        ),
                        Text(
                          data['user_answer'] as String,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12),
                        ),
                        const SizedBox(
                          height: 24,
                        )
                      ],
                    ),
                  )
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
