import 'package:flutter/material.dart';
import 'package:loka/model/food_model.dart';
import 'package:loka/theme.dart';

import '../detail/components/body_screen.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.food}) : super(key: key);
  final Food food;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      appBar: buildAppBar(context),
      body: Body(food: food),
    );
  }
}

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: secondaryColor,
    elevation: 0,
    leading: IconButton(
      icon: const Icon(
        Icons.arrow_back,
        color: Colors.white,
      ),
      onPressed: () => Navigator.pop(context),
    ),
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.shopping_cart),
        onPressed: () {},
      ),
      SizedBox(width: defaultPadding / 2)
    ],
  );
}
