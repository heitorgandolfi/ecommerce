import 'package:ecommerce/controllers/mainscreen_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomNavigatorItems extends StatelessWidget {
  const BottomNavigatorItems({
    super.key,
    this.onTap,
    this.icon,
    this.color,
  });
  final void Function()? onTap;
  final IconData? icon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 35,
        width: 35,
        child: Icon(icon, color: color, size: 28),
      ),
    );
  }
}

class BottomNavigator extends StatelessWidget {
  const BottomNavigator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNotifier>(
        builder: ((context, mainScreenNotifier, child) {
      return SafeArea(
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
      );
    }));
  }
}
