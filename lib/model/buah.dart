import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // list of items on sale
  final List _shopItems = [
    // [ itemName, itemPrice, imagePath, color ]
    ["Alpukat", "4.00", "lib/images/avocado.png", Colors.green],
    ["Pisang", "2.50", "lib/images/banana.png", Colors.yellow],
    [
      "Buah Naga",
      "12.80",
      "lib/images/dragon-fruit.png",
      Colors.red[200],],
      [
        "Anggur",
        "1.00",
        "lib/images/grapes.png",
        Colors.purple[100],
      ]
    
  ];

  // list of cart items
  List _cartItems = [];

  get cartItems => _cartItems;

  get shopItems => _shopItems;

  // add item to cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // calculate total price
  String calculateTotal() {
    int totalPrice = 0;
    for (int i = 0; i < cartItems.length; i++) {
      totalPrice += int.parse(cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
}
}