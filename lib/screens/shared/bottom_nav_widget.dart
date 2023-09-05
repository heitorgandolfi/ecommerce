import 'package:flutter/material.dart';

class BottomNavigatorItems extends StatelessWidget {
  const BottomNavigatorItems({
    super.key,
    this.onTap,
    this.icon,
  });
  final void Function()? onTap;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 35,
        width: 35,
        child: Icon(icon, color: Colors.white, size: 28),
      ),
    );
  }
}

class BottomNavigator extends StatelessWidget {
  const BottomNavigator({super.key});

  @override
  Widget build(BuildContext context) {
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
                onTap: () {},
                icon: Icons.home,
              ),
              BottomNavigatorItems(
                onTap: () {},
                icon: Icons.search_rounded,
              ),
              BottomNavigatorItems(
                onTap: () {},
                icon: Icons.add,
              ),
              BottomNavigatorItems(
                onTap: () {},
                icon: Icons.shopping_cart,
              ),
              BottomNavigatorItems(
                onTap: () {},
                icon: Icons.person,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
