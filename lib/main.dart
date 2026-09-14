import 'package:flutter/material.dart';
import 'package:train_router/under_construction_page.dart';

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
Splash Screen -> Make for android -> no need for seperate class anymore, just make it in pubspec, along with the logo
Seat class page
Fare Calculator page
Train information page
Add Futurebuilder from flutter devs
Add Authentication using Firebase
*/