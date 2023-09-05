import 'package:flutter/material.dart';

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
