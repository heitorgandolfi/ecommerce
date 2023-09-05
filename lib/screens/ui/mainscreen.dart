import 'package:ecommerce/controllers/mainscreen_provider.dart';
import 'package:ecommerce/screens/shared/bottom_nav_widget.dart';
import 'package:ecommerce/screens/ui/addpage.dart';
import 'package:ecommerce/screens/ui/cartpage.dart';
import 'package:ecommerce/screens/ui/homepage.dart';
import 'package:ecommerce/screens/ui/profile.dart';
import 'package:ecommerce/screens/ui/searchpage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  List<Widget> pageList = const [
    HomeScreen(),
    SearchScreen(),
    AddScreen(), //temporary
    CartScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNotifier>(
      builder: (context, mainScreenNotifier, child) => Scaffold(
        backgroundColor: const Color(0xFFE2E2E2),
        body: pageList[mainScreenNotifier.pageIndex],
        bottomNavigationBar: const BottomNavigator(),
      ),
    );
  }
}
