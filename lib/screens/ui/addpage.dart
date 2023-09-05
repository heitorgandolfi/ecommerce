import 'package:ecommerce/screens/shared/theme.dart';
import 'package:flutter/material.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({super.key});

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Add Screen",
          style: appTextTheme(40, Colors.black, FontWeight.bold),
        ),
      ),
    );
  }
}
