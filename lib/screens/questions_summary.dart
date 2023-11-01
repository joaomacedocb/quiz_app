import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData,{super.key});

  final List<Map<String, Object>> summaryData;
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children:
            summaryData.map(
              (data) {
                return Row(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8.00)),
                        color: Colors.blue,
                        ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(((data['question_index'] as int) + 1).toString()),
                      ),),
                    Expanded(
                      child: Column(
                        children: [
                          const SizedBox(height: 20,),
                          Text(data['question'] as String,
                          style: const TextStyle(color: Colors.white, fontSize: 16),),
                          const SizedBox(height: 12,),
                          Text(data['correct_answer'] as String,
                          style: const TextStyle(color: Color.fromARGB(255, 6, 202, 104), fontSize: 12),),
                          Text(data['user_answer'] as String,
                          style: const TextStyle(color: Color.fromARGB(255, 199, 175, 255), fontSize: 12),)
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