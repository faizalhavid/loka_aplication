import 'package:flutter/material.dart';
import 'package:loka/model/food_model.dart';
import 'package:loka/screens/cart/cart_screen.dart';
import 'package:loka/theme.dart';

import '../detail/components/body_screen.dart';

class DetailScreen extends StatefulWidget {
  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      appBar: buildAppBar(context),
      body: Body(),
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
      onPressed: () => Navigator.pop(
        context,
        MaterialPageRoute(
          builder: (context) => CartPage(),
        ),
      ),
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
