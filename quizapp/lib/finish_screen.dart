import 'package:flutter/material.dart';
import 'package:quizzscreen/drawerf.dart';
import 'package:quizzscreen/drawer_screen.dart';
import 'package:quizzscreen/model/quisten_model.dart';

class FinishScreen extends StatelessWidget {
  final List<String> userAnswers;
  final List<QuestionModel> questions;

  FinishScreen({required this.userAnswers, required this.questions});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DrawerScreen(),
           Drawerf(userAnswers: userAnswers, questions: questions),
         
        ],
      ),
    );
  }
}
