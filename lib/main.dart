import 'package:clone_mobileapp/screens/login_screen.dart';
import 'package:clone_mobileapp/screens/routes_app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const RoutesApp());
}

class NikeApp extends StatelessWidget {
  const NikeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nike Sneaker Store',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.black,
      ),
      home: const LoginScreen(),
    );
  }
}
