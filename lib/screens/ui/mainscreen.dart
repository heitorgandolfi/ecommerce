import 'package:ecommerce/screens/shared/bottom_nav_widget.dart';
import 'package:ecommerce/screens/ui/cartpage.dart';
import 'package:ecommerce/screens/ui/homepage.dart';
import 'package:ecommerce/screens/ui/profile.dart';
import 'package:ecommerce/screens/ui/searchpage.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  List<Widget> pageList = const [
    HomeScreen(),
    SearchScreen(),
    HomeScreen(), //temporary
    CartScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    int pageIndex = 0;
    return Scaffold(
      backgroundColor: const Color(0xFFE2E2E2),
      body: pageList[pageIndex],
      bottomNavigationBar: const BottomNavigator(),
    );
  }
}
