import 'package:flutter/material.dart';
import 'package:quizzscreen/config/constant/color.dart';
import 'package:quizzscreen/config/constant/images.dart';
import 'package:quizzscreen/config/constant/text.dart';
import 'package:quizzscreen/config/constant/text_them.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen(this.onStartButtonPressed, {super.key});
  final void Function() onStartButtonPressed;

  @override
  Widget build(BuildContext context) {
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // asset
                Image.asset(
                  AppImage.anasayfa,
                  width: 240,
                ),

                const Text(AppText.questionApp,
                    style: AppTextTheme.questionApp),

                ElevatedButton(
                  onPressed: () {
                    onStartButtonPressed();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 247, 164, 192),
                    elevation: 4, // Buton yüksekliği
                    padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 16), // İçeriği hizalamak için dolgu

                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(40),
                      ),
                    ),
                    shadowColor: const Color.fromARGB(255, 168, 72, 72)
                        .withOpacity(0.4), // Gölgelendirme rengi ve opaklığı
                  ),
                  child: const Text(AppText.oyun, style: AppTextTheme.writing),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
