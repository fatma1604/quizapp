// ignore_for_file: unused_import, library_private_types_in_public_api, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:quizzscreen/config/constant/color.dart';
import 'package:quizzscreen/config/constant/images.dart';
import 'package:quizzscreen/config/constant/text.dart';
import 'package:quizzscreen/config/constant/text_them.dart';
import 'package:quizzscreen/home_screen.dart';
import 'package:quizzscreen/widget/quizscreen.dart';

// ignore: use_key_in_widget_constructors
class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(218, 179, 171, 201),
      child: Padding(
        padding: const EdgeInsets.only(top: 50, left: 40, bottom: 70),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                CircleAvatar(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: const Image(
                      fit: BoxFit.cover,
                      image: AssetImage(AppImage.profil),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'Fatma Nur Kamış',
                  style: AppTextTheme.writing,
                ),
              ],
            ),
            Column(
              children: <Widget>[
                NewRow(
                  onPressed: () {
                   
                    Navigator.of(context).pushNamed("/quizscreen");
                  
                  },
                  text: 'Fluttar Sorulalrı',
                  icon: Icons.error_outline,
                ),
                const SizedBox(
                  height: 20,
                ),
                NewRow(
                  onPressed: () {},
                  text: 'Profile',
                  icon: Icons.person_outline,
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 20,
                ),
                NewRow(
                  onPressed: () {},
                  text: 'Hint',
                  icon: Icons.lightbulb_outline,
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.cancel,
                  color: Colors.white.withOpacity(0.5),
                ),
                const SizedBox(
                  width: 10,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("/home");
                  },
                  child: Text(
                    AppText.cikis,
                   style: AppTextTheme.writing,),
                  ),
                
              ],
            )
          ],
        ),
      ),
    );
  }
}

class NewRow extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onPressed; // Butona tıklandığında gerçekleştirilecek işlem

  const NewRow({
    required this.icon,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed:
          onPressed, // Butona tıklandığında belirlenen işlemi gerçekleştir
      style: TextButton.styleFrom(
        // Buton metin rengini belirleyin
        padding: EdgeInsets.zero, // Butonun iç boşluğunu sıfırlayın
        alignment: Alignment.centerLeft, // İçeriği sola hizalayın
      ),
      child: Row(
        children: <Widget>[
          Icon(
            icon,
            color: Colors.white,
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            text,
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
