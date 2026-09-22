import 'package:flutter/material.dart';
import 'package:train_router/home_page.dart';
import 'custom_widgets/app_bar.dart';
import 'custom_widgets/app_drawer.dart';
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
      
      appBar: const CustomAppBar(title: 'Train Router'),
      drawer: const AppDrawer(),
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
                onPressed: () {
                  Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ),
                        );
                },
                child: Text('Click Here To go Home'),
              )

            ]
        ),
        
      ),
      
    );
  }
}