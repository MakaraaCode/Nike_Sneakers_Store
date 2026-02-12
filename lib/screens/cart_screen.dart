import 'package:clone_mobileapp/models/cart_model.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final items = CartManager.cartItems;

    // Calculate total price
    final double totalPrice = items.fold(0, (sum, shoe) => sum + shoe.price);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cart",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
        ),
        // centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: items.isEmpty
          ? Center(child: Text("Your bag is empty"))
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      final shoe = items[index];
                      return Card(
                        margin: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 8,
                        ),
                        child: ListTile(
                          leading: Image.network(
                            shoe.imageurl,
                            fit: BoxFit.cover,
                          ),
                          title: Text(shoe.name),
                          subtitle: Text("${shoe.type} • \$${shoe.price}"),
                          trailing: IconButton(
                            icon: Icon(Icons.delete_outline),
                            onPressed: () {
                              CartManager.removeFromCart(shoe);
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text("${shoe.name} removed")),
                              );
                            },
                          ),
                        ),
                      );
                    },
                  ),
                ),
                // Total price + Checkout button
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(12),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.stretch, // makes button full width
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total:",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "\$${totalPrice.toStringAsFixed(2)}",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 12),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(double.infinity, 50),
                          backgroundColor: Colors.black,
                        ),
                        onPressed: () {
                          // TODO: implement checkout logic
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text("Proceeding to checkout..."),
                            ),
                          );
                        },
                        child: Text(
                          "Checkout",
                          style: TextStyle(fontSize: 16, color: Colors.white),
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
