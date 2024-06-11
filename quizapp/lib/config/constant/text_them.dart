import 'package:flutter/material.dart';

class AppTextTheme {
  AppTextTheme._();
  static const TextStyle titleStyle = TextStyle(
    fontSize: 55,
    color: Color.fromARGB(255, 160, 78, 78),
    fontWeight: FontWeight.bold,
  );

  static const TextStyle questionStyle = TextStyle(
    fontSize: 25.0,
    color: Colors.black,
    fontWeight: FontWeight.w300,
  );

  static const TextStyle answerStyle = TextStyle(
    fontSize: 25.0,
    color: Color.fromARGB(255, 46, 62, 112),
    fontWeight: FontWeight.w400,
  );


  static const TextStyle questionCountStyle = TextStyle(
    fontSize: 15,
    color: Color.fromARGB(255, 6, 59, 233),
    fontWeight: FontWeight.bold,
  );

  static const TextStyle question =
      TextStyle(color: Color.fromARGB(255, 73, 63, 63), fontSize: 25);
  static const TextStyle writing = TextStyle(
      color: Color.fromARGB(255, 109, 93, 98),
      fontSize: 32,
      fontWeight: FontWeight.bold,
      letterSpacing: 1.5,
      shadows: [
        Shadow(
          blurRadius: 3.0,
          color: Color.fromARGB(225, 160, 130, 243),
          offset: Offset(2.0, 2.0),
        ),
      ]);

  static const TextStyle questionApp =
      TextStyle(color: Color.fromARGB(255, 73, 63, 63), fontSize: 25);
}
