import 'package:flutter/material.dart';
import 'package:train_router/home_page.dart';
import 'package:train_router/under_construction_page.dart';
import 'package:train_router/seat_show_page.dart';
import 'package:train_router/train_search_page.dart';
import 'package:train_router/train_details_page.dart';
import 'package:train_router/profile_page.dart';
class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.lightBlue, ),
            child: Text(
              'Train Router',
              style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            title: const Text('Home', style: TextStyle(fontWeight: FontWeight.bold),),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
          ),
          
          ListTile(
            title: const Text('Train Information' , style: TextStyle(fontWeight: FontWeight.bold),),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => train_search_page()),
              );
            },
          ),
          ListTile(
            title: const Text('Seat Information' , style: TextStyle(fontWeight: FontWeight.bold),),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => seat_show_page()),
              );
            },
          ),
          ListTile(
            title: const Text('Fare Calculator' , style: TextStyle(fontWeight: FontWeight.bold),),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => UnderConstruction()),
              );
            },
          ),
          ListTile(
            title: const Text('Profile' , style: TextStyle(fontWeight: FontWeight.bold),),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            },
          ),
        ],
      ),
    );
  }
}