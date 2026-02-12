import 'package:clone_mobileapp/models/fav_model.dart';
// import 'package:clone_mobileapp/screens/login_screen.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});
  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(context),
      body: _buildBody(context),
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
            "Favorite",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              letterSpacing: 1.5,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    if (Fav.items.isEmpty) {
      return const Center(
        child: Text(
          "Your Favorite is empty",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            "Products", // ✅ text under AppBar
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: Fav.items.length,
            itemBuilder: (context, index) {
              final favItem = Fav.items[index];
              return ListTile(
                leading: Image.network(
                  favItem.shoe.imageurl,
                  height: 100,
                  width: 70,
                ),
                title: Text(favItem.shoe.name),
                subtitle: Text("Size: ${favItem.size}"),
                trailing: IconButton(
                  icon: const Icon(Icons.delete, color: Colors.pink),
                  onPressed: () {
                    setState(() {
                      Fav.removeItem(favItem);
                    });
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
