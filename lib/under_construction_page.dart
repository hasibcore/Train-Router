import 'package:flutter/material.dart';
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

class UnderConstruction extends StatelessWidget {
  const UnderConstruction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 1, 162, 255),
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
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.train,
                size: 150,
                color: Color.fromARGB(255, 1, 162, 255),
              ),
              SizedBox(height: 15),
              Text(
                'Page is Under Development',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              
              
              TextButton(
                style: ButtonStyle(
                  foregroundColor: WidgetStatePropertyAll(const Color.fromARGB(255, 26, 3, 238)),
                ),
                onPressed: () {},
                child: Text('Click Here To go Home'),
              )

            ]
        ),
        
      ),
      
    );
  }
}