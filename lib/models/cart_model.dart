// cart_manager.dart
import 'package:clone_mobileapp/models/shoe_model.dart';

class CartManager {
  static final List<Shoe> cartItems = [];

  static void addToCart(Shoe shoe) {
    cartItems.add(shoe);
  }

  static void removeFromCart(Shoe shoe) {
    cartItems.remove(shoe);
  }
}
