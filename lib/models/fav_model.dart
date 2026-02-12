import 'dart:ui';

import 'package:clone_mobileapp/models/shoe_model.dart';

class FavItem {
  final Shoe shoe;
  final String size;
  final Color color;

  FavItem({required this.shoe, required this.size, required this.color});
}

class Fav {
  static List<FavItem> items = [];

  static void addItem(FavItem item) {
    items.add(item);
  }

  static void removeItem(FavItem item) {
    items.remove(item);
  }
}
