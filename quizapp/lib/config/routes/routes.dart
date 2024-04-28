import 'package:flutter/material.dart';
import 'package:quizzscreen/home_screen.dart';
import 'package:quizzscreen/widget/quizscreen.dart';


typedef AppRouteMapFunction = Widget Function(BuildContext context);

final class AppRoute {
  const AppRoute._(); // Gizlilik için yapıldı

 
  static const String home = "/home";
    static const String quizscreen = "/quizscreen";
 

  static Map<String, AppRouteMapFunction> routes = {
   

   home: (context) => HomeScreen(
    (){}
   ),
    quizscreen:(context) => QuizScreen( chooseAnswer: (answer) {} )
  };
}