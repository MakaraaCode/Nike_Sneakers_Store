import 'package:clone_mobileapp/models/cart_model.dart';
import 'package:clone_mobileapp/models/fav_model.dart';
import 'package:clone_mobileapp/models/shoe_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  String? selectedSize;
  Color? selectedColor;

  @override
  Widget build(BuildContext context) {
    final item = ModalRoute.of(context)?.settings.arguments as Shoe;

    return Scaffold(
      appBar: AppBar(title: Text("Product Detail")),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.network(
                item.imageurl,
                height: 350,
                fit: BoxFit.cover,
                width: double.maxFinite,
              ),
            ),
          ),

          // text name, type + category, price
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              "${item.type} • ${item.category}", // ✅ combine type + category
              style: GoogleFonts.robotoCondensed(
                fontSize: 14,
                color: Colors.grey[700],
                height: 1,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              // leading: Icon(Icons.title),
              (item.name),
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                height: 0.5,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              "\$${item.price}",
              style: GoogleFonts.robotoCondensed(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.green,
                height: 1,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Size",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                // SizedBox(height: 8),

                // ✅ Option 1: Buttons for sizes
                Wrap(
                  spacing: 8,
                  children: ["6", "7", "8", "9", "10"].map((size) {
                    return ChoiceChip(
                      label: Text(size),
                      selected: selectedSize == size,
                      onSelected: (selected) {
                        setState(() {
                          selectedSize = size;
                        });
                      },
                    );
                  }).toList(),
                ),

                // Colors choice
                Text(
                  "Color",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                // SizedBox(height: 8),
                Wrap(
                  spacing: 12,
                  children: [Colors.black, Colors.green, Colors.pink].map((
                    color,
                  ) {
                    final isSelected = selectedColor == color;
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedColor = color;
                        });
                      },
                      child: CircleAvatar(
                        radius: 16,
                        backgroundColor: color,
                        child: isSelected
                            ? Icon(
                                Icons.check,
                                color: Colors.white,
                                size: 18,
                              ) // ✅ show check if selected
                            : null,
                      ),
                    );
                  }).toList(),
                ),

                // cart and favorite button
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  child: SizedBox(
                    height: 65,
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        textStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {
                        CartManager.addToCart(item); // add product to cart
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("${item.name} added to bag")),
                        );
                      },
                      label: Text("Add To Cart"),
                      // icon: Icon(Icons.shopping_cart_outlined),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  child: SizedBox(
                    height: 55,
                    width: double.infinity,
                    child: OutlinedButton.icon(
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Colors.black, width: 2),
                      ),

                      onPressed: () {
                        if (selectedSize == null || selectedColor == null) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                "Please select size and color first",
                              ),
                            ),
                          );
                        } else {
                          Fav.addItem(
                            FavItem(
                              shoe: item,
                              size: selectedSize!,
                              color: selectedColor!,
                            ),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                "Added ${item.name} (size $selectedSize) to Favorite",
                              ),
                            ),
                          );
                          // Navigator.pushNamed(
                          //   context,
                          //   "/cart",
                          // ); // ✅ navigate to cart screen
                        }
                      },
                      label: Text(
                        "Favorite",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),

                      icon: Icon(Icons.favorite_outline, color: Colors.black),
                      iconAlignment: IconAlignment.end,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
