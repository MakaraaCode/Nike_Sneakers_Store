import 'package:clone_mobileapp/screens/main_screen.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => const MainScreen()),
            );
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "App",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              "Make life easier, on tap at at time.",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text("Version 1.0.0", style: TextStyle(fontSize: 16)),
            Text(
              "Developed by : Hong Nunmakara",
              style: TextStyle(fontSize: 16),
            ),
            Text("Contact: Hongm3102@gmail.com"),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // navigator to privacy
              },
              child: Text(
                "Privacy Policy",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
