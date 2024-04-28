// ignore: must_be_immutable
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:quizzscreen/config/constant/text.dart';
import 'package:quizzscreen/config/constant/text_them.dart';
import 'package:quizzscreen/model/quisten_model.dart';

// ignore: must_be_immutable
class AnswerSummary extends StatelessWidget {
  final List<String> userAnswers;
  final List<QuestionModel> questions;

  AnswerSummary(
      {super.key, required this.userAnswers, required this.questions});

  int correctCount = 0;
  int wrongCount = 0;

  int calculateCorrectResult(
      List<QuestionModel> questions, List<String> userAnswers) {
    for (int i = 0; i < questions.length; i++) {
      if (questions[i].correctAnswer == userAnswers[i]) {
        correctCount++;
      }
    }
    return correctCount;
  }

  int calculateWrongResult(
      List<QuestionModel> questions, List<String> userAnswers) {
    for (int i = 0; i < questions.length; i++) {
      if (questions[i].correctAnswer != userAnswers[i]) {
        wrongCount++;
      }
    }
    return wrongCount;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(AppText.reply, style: AppTextTheme.titleStyle),
        for (int i = 0; i < userAnswers.length; i++)
          Column(
            children: [
              Text('Soru ${i + 1}:  ',
                  semanticsLabel: AppText.answer,
                  style: AppTextTheme.answerStyle),
              Text(
                ' ${userAnswers[i]}',
                style: AppTextTheme.questionStyle,
              )
            ],
          ),
        Text(
          "${AppText.correct} ${calculateCorrectResult(questions, userAnswers)}",
          style: AppTextTheme.correctAnswerStyle,
        ),
        Text(
          "${AppText.correct} ${calculateCorrectResult(questions, userAnswers)}",
          style: AppTextTheme.wrongAnswerStyle,
        ),
        Text(
          "${AppText.correct} ${calculateCorrectResult(questions, userAnswers)}",
          style: AppTextTheme.questionCountStyle,
        ),
        Container()
      ],
    );
  }
}
