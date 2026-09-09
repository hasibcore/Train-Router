import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome back! Sign in to continue',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ]
          )
      ),
    );
  }
}
/*
logo
Text: Login to TrainRouter
Text: Username
TextBox
Text: Password
Textbox
Login Button
Text for forgot password/create account 
*/