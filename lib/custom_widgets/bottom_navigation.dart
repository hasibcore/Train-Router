import 'package:flutter/material.dart';
import 'package:train_router/home_page.dart';
import 'package:train_router/train_details_page.dart';
class CustomBottomNavigation extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomBottomNavigation({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.lightBlue,
      height: 20,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}