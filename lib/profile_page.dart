import 'package:flutter/material.dart';
import 'custom_widgets/app_bar.dart';
import 'custom_widgets/app_drawer.dart';
import 'custom_widgets/bottom_navigation.dart';
import 'package:train_router/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:train_router/auth_service.dart';
import 'package:train_router/login_page.dart';
import 'custom_widgets/bottom_navigation.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    User? user = FirebaseAuth.instance.currentUser;
    return Scaffold(
      appBar: const CustomAppBar(title: 'Home'),
      drawer: const AppDrawer(),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 25),
            Center(
              child:Icon(Icons.train, size: 100, color: Colors.blue),
            ),
            SizedBox(height: 25),
            Text(
              'Name: ${user?.displayName ?? 'User'}',
              style: const TextStyle(fontSize: 26, ),
            ),
            Text(
              'Email: ${user?.email ?? 'User'}',
              style: const TextStyle(fontSize: 26, ),
            ),

            const Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () async {
                  await AuthService().logout();

                  if (context.mounted) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                child: const Text(
                  'Log Out', 
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white)
                ),
              ),
            ),
            SizedBox(height: 36,),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}
