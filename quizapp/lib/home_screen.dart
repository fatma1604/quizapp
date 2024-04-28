import 'package:flutter/material.dart';
import 'package:quizzscreen/config/constant/color.dart';
import 'package:quizzscreen/config/constant/images.dart';
import 'package:quizzscreen/config/constant/text.dart';
import 'package:quizzscreen/config/constant/text_them.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen(this.onStartButtonPressed, {super.key});
  final void Function() onStartButtonPressed;

  // ignore: annotate_overrides
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // asset
            Image.asset(
              AppImage.anasayfa,
              width: 240,
            ),

            const Text(
              AppText.questionApp,
              style:AppTextTheme.questionApp
            ),

            ElevatedButton(
              onPressed: () {
                onStartButtonPressed();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:AppColor.button,
                elevation: 4, // Buton yüksekliği
                padding:const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 16), // İçeriği hizalamak için dolgu

                shape:const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(40),
                  ),
                ),
                shadowColor:AppColor.golge
                    .withOpacity(0.4), // Gölgelendirme rengi ve opaklığı
              ),
              child:const Text(
                AppText.oyun,
                style:AppTextTheme.writing
              ),
            ),
          ],
        ),
      ),
    );
  }
}
