import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white, body: _buildBody(context));
  }

  Widget _buildBody(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            "My Profile", // ✅ text under AppBar
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
        ),
        const ListTile(
          leading: Icon(Icons.person),
          title: Text("Name"),
          subtitle: Text("Hong Nunmakara"), // example
        ),
        const ListTile(
          leading: Icon(Icons.email),
          title: Text("Email"),
          subtitle: Text("Nunmakara12@example.com"), // example
        ),
        const ListTile(
          leading: Icon(Icons.phone),
          title: Text("Phone"),
          subtitle: Text("+855 123456789"), // example
        ),
      ],
    );
  }
}
