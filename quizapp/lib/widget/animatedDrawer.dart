// ignore: file_names
// ignore: file_names


// ignore_for_file: file_names, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:quizzscreen/data/questions.dart';
import 'package:quizzscreen/model/quisten_model.dart';
import 'package:quizzscreen/widget/answerSummary.dart';

class AnimatedDrawer extends StatefulWidget {
  final List<String> userAnswers; // Add userAnswers as a parameter
  const AnimatedDrawer(
      {super.key,
      required this.userAnswers,
      required List<QuestionModel> questions});

  @override
  State<AnimatedDrawer> createState() => _DrawerfState();
}

class _DrawerfState extends State<AnimatedDrawer> {
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
        color: const Color.fromARGB(255, 194, 175, 247),
        borderRadius:
            isDrawerOpen ? BorderRadius.circular(40) : BorderRadius.circular(0),
      ),
      child: SingleChildScrollView(
        child: SizedBox(
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
            AnswerSummary(userAnswers: widget.userAnswers, questions: questions),
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

