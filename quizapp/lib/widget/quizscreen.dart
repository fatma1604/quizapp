import 'package:flutter/material.dart';
import 'package:quizzscreen/config/constant/color.dart';
import 'package:quizzscreen/config/constant/text_them.dart';
import 'package:quizzscreen/data/questions.dart';
import 'dart:async';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key, required this.chooseAnswer}) : super(key: key);

  final void Function(String answer) chooseAnswer;

  @override
  State<QuizScreen> createState() => _QuizState();
}

class _QuizState extends State<QuizScreen> {
  int selectedQuestionIndex = 0;
  int timerSeconds = 25;
  bool isAnswered = false;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (Timer timer) {
      setState(() {
        if (timerSeconds > 0) {
          timerSeconds--;
        } else {
          timer.cancel();
          if (!isAnswered) {
            changeQuestion();
          }
        }
      });
    });
  }

  void changeQuestion() {
    setState(() {
      isAnswered = false;
      timerSeconds = 25;
      if (questions.length - 1 > selectedQuestionIndex) {
        selectedQuestionIndex++;
        startTimer();
      } else {
        // Quizi bitirme
      }
    });
  }

  @override
  Widget build(BuildContext buildContext) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [AppColor.drawerBac, Colors.white], // İki renk belirleyin
        ),
      ),
      child: Center(
        child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                questions[selectedQuestionIndex].question,
                style: AppTextTheme.question,
              ),
              ...questions[selectedQuestionIndex].answers.map(
                (answer) {
                  return ElevatedButton(
                    onPressed: () {
                      widget.chooseAnswer(answer);
                      setState(() {
                        isAnswered = true;
                      });
                      changeQuestion();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.button,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                    ),
                    child: Text(answer,style:AppTextTheme.answerStyle ,),
                  );
                },
              ),
              SizedBox(height: 20),
              Text(
                'Süre: $timerSeconds',
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
