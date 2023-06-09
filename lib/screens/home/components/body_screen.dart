import 'package:flutter/material.dart';
import 'package:loka/screens/home/components/card_item.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loka/screens/detail/detail_screen.dart';
import 'package:loka/theme.dart';
import 'package:provider/provider.dart';

import '../../../model/food_model.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            "Cari Loka",
            style: dark_titleTextStyle,
          ),
        ),
        const _Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Consumer<Food>(
              builder: (context, value, child) {
                return GridView.builder(
                    controller: ScrollController(),
                    itemCount: value.foodItem.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: 200,
                      crossAxisSpacing: 3,
                      childAspectRatio: 0.50,
                    ),
                    itemBuilder: (context, index) {
                      return BuildCard(
                        title: value.foodItem[index][0],
                        description: value.foodItem[index][1],
                        category: [
                          value.foodItem[index][2][0],
                          value.foodItem[index][1][1]
                        ],
                        icon: [
                          value.foodItem[index][3][0],
                          value.foodItem[index][3][1],
                        ],
                        price: value.foodItem[index][4],
                        image: value.foodItem[index][5],
                        press: () {
                          Provider.of<Food>(context, listen: false)
                              .addfoodToCart(index);
                        },
                      );
                    });
              },
            ),
          ),
        ),
      ],
    );
  }
}

class _Categories extends StatefulWidget {
  const _Categories({Key? key}) : super(key: key);

  @override
  State<_Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<_Categories> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding - 5),
      child: SizedBox(
        height: 55,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories!.length,
          itemBuilder: (context, index) => buildCategory(index),
        ),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        selectedIndex = index;
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding) / 1.9,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: selectedIndex == index
                    ? secondaryColor
                    : const Color.fromRGBO(237, 237, 237, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
              onPressed: () {
                setState(() {
                  selectedIndex = index;
                });
              },
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
                    categories![index],
                    style: selectedIndex == index
                        ? subtitleTextStyle
                        : grey_subtitleTextStyle,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: defaultPadding / 4),
              height: 1.5,
              width: 60,
              color: selectedIndex == index
                  ? Color.fromARGB(255, 212, 212, 212)
                  : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
