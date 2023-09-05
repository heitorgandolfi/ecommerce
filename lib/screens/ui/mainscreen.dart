import 'package:ecommerce/screens/shared/bottom_nav_widget.dart';
import 'package:ecommerce/screens/shared/theme.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE2E2E2),
      body: Center(
        child: Text(
          'Main Screen',
          style: appTextTheme(40, Colors.black, FontWeight.w500),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.circular(16)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BottomNav(
                  onTap: () {},
                  icon: Icons.home,
                ),
                BottomNav(
                  onTap: () {},
                  icon: Icons.search_rounded,
                ),
                BottomNav(
                  onTap: () {},
                  icon: Icons.add,
                ),
                BottomNav(
                  onTap: () {},
                  icon: Icons.shopping_cart,
                ),
                BottomNav(
                  onTap: () {},
                  icon: Icons.person,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
