import 'package:flutter/cupertino.dart';
import 'package:loka/model/food_model.dart';

class DoneTourismProvider extends ChangeNotifier {
  final List<Food> _CheckoutFoods = [];
  List<Food> get CheckoutFoods => _CheckoutFoods;

  void complete(Food food, bool isDone) {
    isDone ? _CheckoutFoods.add(food) : _CheckoutFoods.remove(food);
    notifyListeners();
  }
}
