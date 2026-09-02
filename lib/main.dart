import 'package:flutter/material.dart';
import 'package:train_router/under_construction_page.dart';
import 'package:train_router/splash_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Train Router',
      home: const UnderConstruction(),
    );
  }
}


/*
Login page
Sign up page
Home page
Splash Screen -> Make for android
Seat class page
Fare Calculator page
Train information page
*/