import 'package:clone_mobileapp/screens/about_screen.dart';
import 'package:clone_mobileapp/screens/favorite_screen.dart';
import 'package:clone_mobileapp/screens/login_screen.dart';
import 'package:clone_mobileapp/screens/shope_screen.dart';
import 'package:clone_mobileapp/screens/cart_screen.dart';
import 'package:clone_mobileapp/screens/profile_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      drawer: _buildDrawer(context),
      body: _buildBody(context),
      bottomNavigationBar: _buildBottomNavBar(),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      centerTitle: true,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Nike",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              letterSpacing: 1.5,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => FavoriteScreen()));
            },
            icon: Icon(Icons.favorite_outline, color: Colors.red),
          ),
        ],
      ),
    );
  }

  Widget _buildDrawer(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.only(left: 16),
        children: [
          DrawerHeader(
            child: Image.network(
              "https://tse1.mm.bing.net/th/id/OIP.fssi_WH8r1e_i5oXsAmKYwHaEQ?rs=1&pid=ImgDetMain&o=7&rm=3",
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Home'),
            onTap: () {
              Navigator.of(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.info_outline),
            title: const Text('about'),
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const AboutScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout_outlined, color: Colors.red),
            title: const Text('Logout', style: TextStyle(color: Colors.red)),
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const LoginScreen()),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return IndexedStack(
      index: _currentIndex,
      children: [ShopeScreen(), CartScreen(), ProfileScreen()],
    );
  }

  int _currentIndex = 0;

  Widget _buildBottomNavBar() {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
        debugPrint("_currentIndex: $_currentIndex");
      },
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "Shop"),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_bag_outlined),
          label: "Cart",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: "Profile",
        ),
      ],
    );
  }
}
