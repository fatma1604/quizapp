import 'package:flutter/material.dart';
import 'package:quizzscreen/data/questions.dart';
import 'package:quizzscreen/model/quisten_model.dart';

class Drawerf extends StatefulWidget {
  final List<String> userAnswers; // Add userAnswers as a parameter
  Drawerf(
      {Key? key,
      required this.userAnswers,
      required List<QuestionModel> questions})
      : super(key: key);

  @override
  State<Drawerf> createState() => _DrawerfState();
}

class _DrawerfState extends State<Drawerf> {
  double xOffset = 0;
  double yOffset = 0;
  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQueryData = MediaQuery.of(context);
    final double mHeight = mediaQueryData.size.height;
    final double mWidth = mediaQueryData.size.width;
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(isDrawerOpen ? 0.85 : 1.00)
        ..rotateZ(isDrawerOpen ? -50 : 0),
      duration: const Duration(milliseconds: 200),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 180, 152, 255),
        borderRadius:
            isDrawerOpen ? BorderRadius.circular(40) : BorderRadius.circular(0),
      ),
      child: SingleChildScrollView(
        child: Container(
          width: mWidth / 1,
          height: mHeight / 1,
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 50,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    isDrawerOpen
                        ? GestureDetector(
                            child: const Icon(Icons.arrow_back_ios),
                            onTap: () {
                              setState(() {
                                xOffset = 0;
                                yOffset = 0;
                                isDrawerOpen = false;
                              });
                            },
                          )
                        : GestureDetector(
                            child: const Icon(Icons.menu),
                            onTap: () {
                              setState(() {
                                xOffset = 290;
                                yOffset = 80;
                                isDrawerOpen = true;
                              });
                            },
                          ),
                    Container(),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              // Display the Cevap widget
              Cevap(userAnswers: widget.userAnswers, questions: questions),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Cevap extends StatelessWidget {
  final List<String> userAnswers;
  final List<QuestionModel> questions;

  Cevap({Key? key, required this.userAnswers, required this.questions})
      : super(key: key);

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
        const Text(
          "Cevaplarınız",
          style: TextStyle(
            fontSize: 55,
            color: Color.fromARGB(255, 160, 78, 78),
            fontWeight: FontWeight.bold,
          ),
        ),
        for (int i = 0; i < userAnswers.length; i++)
          Column(
            children: [
              Text(
                'Soru ${i + 1}:  '
                'Cevap',
                style: const TextStyle(
                    fontSize: 25.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w300),
              ),
              Text(
                ' ${userAnswers[i]}',
                style: const TextStyle(
                    fontSize: 25.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
        Text(
          "Toplam Doğru Sayınız: ${calculateCorrectResult(questions, userAnswers)}",
          style: const TextStyle(
            fontSize: 20,
            color: Color.fromARGB(255, 6, 233, 97),
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "Toplam Yanlış Sayınız: ${calculateWrongResult(questions, userAnswers)}",
          style: const TextStyle(
            fontSize: 20,
            color: Color.fromARGB(255, 233, 67, 6),
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "Toplam Soru Sayısı: ${questions.length}",
          style: const TextStyle(
            fontSize: 20,
            color: Color.fromARGB(255, 6, 59, 233),
            fontWeight: FontWeight.bold,
          ),
        ),
        Container()
      ],
    );
  }
}
