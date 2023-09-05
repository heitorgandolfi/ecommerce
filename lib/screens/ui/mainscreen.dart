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
                  BottomNavigatorItems(
                    onTap: () {
                      mainScreenNotifier.updatePageIndex = 0;
                    },
                    icon: Icons.home,
                    color: mainScreenNotifier.pageIndex == 0
                        ? Colors.purple[300]
                        : Colors.white,
                  ),
                  BottomNavigatorItems(
                    onTap: () {
                      mainScreenNotifier.updatePageIndex = 1;
                    },
                    icon: Icons.search_rounded,
                    color: mainScreenNotifier.pageIndex == 1
                        ? Colors.purple[300]
                        : Colors.white,
                  ),
                  BottomNavigatorItems(
                    onTap: () {
                      mainScreenNotifier.updatePageIndex = 2;
                    },
                    icon: Icons.add,
                    color: mainScreenNotifier.pageIndex == 2
                        ? Colors.purple[300]
                        : Colors.white,
                  ),
                  BottomNavigatorItems(
                    onTap: () {
                      mainScreenNotifier.updatePageIndex = 3;
                    },
                    icon: Icons.shopping_cart,
                    color: mainScreenNotifier.pageIndex == 3
                        ? Colors.purple[300]
                        : Colors.white,
                  ),
                  BottomNavigatorItems(
                    onTap: () {
                      mainScreenNotifier.updatePageIndex = 4;
                    },
                    icon: Icons.person,
                    color: mainScreenNotifier.pageIndex == 4
                        ? Colors.purple[300]
                        : Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
