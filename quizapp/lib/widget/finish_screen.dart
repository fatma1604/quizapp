import 'package:flutter/material.dart';
import 'package:quizzscreen/widget/animatedDrawer.dart';
import 'package:quizzscreen/widget/drawer_screen.dart';
import 'package:quizzscreen/model/quisten_model.dart';

class FinishScreen extends StatelessWidget {
  final List<String> userAnswers;
  final List<QuestionModel> questions;

  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  FinishScreen({required this.userAnswers, required this.questions});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Stack(
        children: [
          DrawerScreen(),
       AnimatedDrawer   (userAnswers: userAnswers, questions: questions),
         
        ],
      ),
    );
  }
}
