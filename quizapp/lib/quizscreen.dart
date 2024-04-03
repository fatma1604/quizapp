import 'package:flutter/material.dart';
import 'package:quizzscreen/data/questions.dart';

class QuizScreen extends StatefulWidget {
  // named argument

  // default argumentlar required olarak gelir
  // named argumentlar required olarak gelmez, gerektiğinde işaretlenmesi gerekir.
  const QuizScreen({super.key, required this.chooseAnswer});
  final void Function(String answer) chooseAnswer;

  @override
  State<QuizScreen> createState() {
    return _QuizState();
  }
}

// navigator
class _QuizState extends State<QuizScreen> {
  int selectedQuestionIndex = 0;

  void changeQuestion() {
    setState(() {
      if (questions.length - 1 > selectedQuestionIndex)
        selectedQuestionIndex++;
      else {
        // Quizi bitirme
      }
    });
  }

  @override
  Widget build(BuildContext buildContext) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 182, 159, 247),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                questions[selectedQuestionIndex].question,
                style: const TextStyle(
                    fontSize: 25, color: Color.fromARGB(255, 73, 63, 63)),
              ),
              ...questions[selectedQuestionIndex].answers.map(
                (answer) {
                  return ElevatedButton(
                      onPressed: () {
                        widget.chooseAnswer(answer);
                        changeQuestion();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                          const  Color.fromARGB(255, 248, 172, 197),
                        shape:const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(
                                20), 
                            bottomRight: Radius.circular(
                                20), 
                          ),
                          side: BorderSide(
                            color: Color.fromARGB(255, 143, 109, 236),
                          ), 
                        ),
                      ),
                      child: Text(answer));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
