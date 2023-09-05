import 'package:ecommerce/screens/shared/theme.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Cart Screen",
          style: appTextTheme(40, Colors.black, FontWeight.bold),
        ),
      ),
    );
  }
}
