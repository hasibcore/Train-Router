import 'package:flutter/material.dart';

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
      home: const TrainRouterHome(),
    );
  }
}

class TrainRouterHome extends StatelessWidget {
  const TrainRouterHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF006B3C),
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),

        title: const Text(
          'TRAIN ROUTER',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 0.8,
          ),
        ),
      ),
      body: const Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.train,
                size: 100,
                color: Color(0xFF006B3C),
              ),
              SizedBox(height: 15),
              Text(
                'Page is Under Development',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ]
        ),
      ),
    );
  }
}
