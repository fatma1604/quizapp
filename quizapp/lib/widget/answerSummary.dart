import 'package:flutter/material.dart';
import 'package:quizzscreen/model/quisten_model.dart';

class AnswerSummary extends StatelessWidget {
  final List<String> userAnswers;
  final List<QuestionModel> questions;

  AnswerSummary({
    required this.userAnswers,
    required this.questions,
  });

  @override
  Widget build(BuildContext context) {
    int correctCount = 0;
    int wrongCount = 0;

    for (int i = 0; i < questions.length; i++) {
      if (questions[i].correctAnswer == userAnswers[i]) {
        correctCount++;
      } else {
        wrongCount++;
      }
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Sonuç',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 20), // Başlık ile yuvarlak arasında boşluk
        Container(
          width: 150, // Yuvarlağın genişliğini artırdık
          height: 150, // Yuvarlağın yüksekliğini artırdık
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.black), // Yuvarlağın kenarlık rengi
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Doğru: $correctCount',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Yanlış: $wrongCount',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
