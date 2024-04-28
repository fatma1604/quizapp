import 'package:flutter/material.dart';
import 'package:quizzscreen/config/routes/routes.dart';
import 'package:quizzscreen/widget/swiper_screen.dart';
//yeni proje

void main() {
  runApp(MaterialApp(
      routes: AppRoute.routes,
      debugShowCheckedModeBanner: false,
      // ignore: prefer_const_constructors
      home: SwiperScreen()));
}
