import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen(this.onStartButtonPressed, {super.key});
  final void Function() onStartButtonPressed;

  Widget build(BuildContext buildContext) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // asset
            Image.asset(
              "assets/images/quiz-logo.png",
              width: 240,
            ),

            const Text(
              "Quiz App",
              style: TextStyle(
                color: Color.fromARGB(255, 243, 128, 166),
                fontSize: 32,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
                shadows: [
                  Shadow(
                    blurRadius: 3.0,
                    color: Color.fromARGB(225, 160, 130, 243),
                    offset: Offset(2.0, 2.0),
                  ),
                ],
              ),
            ),

            ElevatedButton(
              onPressed: () {
                onStartButtonPressed();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:const Color.fromARGB(255, 243, 128, 166),
                elevation: 4, // Buton yüksekliği
                padding:const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 16), // İçeriği hizalamak için dolgu

                shape:const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(40),
                  ),
                ),
                shadowColor: const Color.fromARGB(255, 95, 87, 87)
                    .withOpacity(0.4), // Gölgelendirme rengi ve opaklığı
              ),
              child:const Text(
                "Oyuna Başla",
                style: TextStyle(
                  color:
                      Color.fromARGB(255, 240, 219, 219), // Buton metin rengi
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
