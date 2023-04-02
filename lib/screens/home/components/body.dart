import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loka/theme.dart';

import '../../../model/food_model.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Text(
            "Cari Loka",
            style: dark_titleTextStyle,
          ),
        ),
        const _Categories(),
      ],
    );
  }
}

class _Categories extends StatefulWidget {
  const _Categories({super.key});

  @override
  State<_Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<_Categories> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => buildCategory(index),
      ),
    );
  }

  Widget buildCategory(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: selectedIndex == index
                  ? const Color.fromRGBO(255, 178, 0, 1)
                  : const Color.fromRGBO(237, 237, 237, 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
            ),
            onPressed: () {},
            child: Row(
              children: [
                Image(
                  image: AssetImage(iconku[index]),
                  width: 20,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  categories[index],
                  style: selectedIndex == index
                      ? subtitleTextStyle
                      : grey_subtitleTextStyle,
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: defaultPadding / 4),
            height: 2,
            width: 30,
            color: selectedIndex == index ? subtitleColor : Colors.transparent,
          )
        ],
      ),
    );
  }
}
