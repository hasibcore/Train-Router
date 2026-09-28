
import 'package:flutter/material.dart';
import 'package:train_router/under_construction_page.dart';
import 'package:train_router/login_screen.dart';

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



class LoginPage extends StatelessWidget {
const LoginPage({super.key});

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text("Train Router"),
),

body: Padding(
padding: const EdgeInsets.all(20),

child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [

const Icon(
Icons.train,
size: 70,
),

const SizedBox(height: 20),

const Text(
"Welcome to Train Router",
style: TextStyle(
fontSize: 25,
fontWeight: FontWeight.bold,
),
),

const SizedBox(height: 30),

TextField(
decoration: const InputDecoration(
labelText: "Email",
border: OutlineInputBorder(),
),
),

const SizedBox(height: 15),

TextField(
obscureText: true,
decoration: const InputDecoration(
labelText: "Password",
border: OutlineInputBorder(),
),
),

const SizedBox(height: 20),

SizedBox(
width: double.infinity,

child: ElevatedButton(
onPressed: () {
print("Login button pressed");
},

child: const Text("Login"),
),
),

const SizedBox(height: 10),

TextButton(
onPressed: () {
Navigator.push(
context,
MaterialPageRoute(
builder: (context) => const SignUpPage(),
),
);
},

child: const Text("Create Account"),
),
],
),
),
);
}
}



class SignUpPage extends StatelessWidget {
const SignUpPage({super.key});

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text("Sign Up"),
),

body: Padding(
padding: const EdgeInsets.all(20),

child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [

const Text(
"Create Account",
style: TextStyle(
fontSize: 25,
fontWeight: FontWeight.bold,
),
),

const SizedBox(height: 25),

TextField(
decoration: const InputDecoration(
labelText: "Enter phone number",
border: OutlineInputBorder(),
),
),

const SizedBox(height: 15),

TextField(
decoration: const InputDecoration(
labelText: "Enter your name",
border: OutlineInputBorder(),
),
),

const SizedBox(height: 15),

TextField(
obscureText: true,
decoration: const InputDecoration(
labelText: "Enter password",
border: OutlineInputBorder(),
),
),

const SizedBox(height: 15),

TextField(
obscureText: true,
decoration: const InputDecoration(
labelText: "Re-enter password",
border: OutlineInputBorder(),
),
),
],
),
),
);
}
}

