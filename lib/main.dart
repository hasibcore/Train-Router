import 'package:flutter/material.dart';
import 'package:train_router/under_construction_page.dart';
import 'package:train_router/login_page.dart';
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
      home: const LoginPage(),
    );
  }
}


/*



To do:
Add a Sign up page
Add Futurebuilder from flutter devs
Add Authentication using Firebase
Add Functions for fare calculator
Add user setting of home station
*/