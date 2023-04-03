import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loka/theme.dart';

import '../../../model/food_model.dart';

class Body extends StatefulWidget {
  final Food food;
  const Body({super.key, required this.food});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    bool onCheckoutfoods = false;
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(children: [
              Container(
                margin: EdgeInsets.only(top: size.height * 0.3),
                padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: defaultPadding,
                    right: defaultPadding),
                // height: 500,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Row(
                    //   children: [
                    //     Image(
                    //       image: AssetImage(food.icon[0].toString()),
                    //       width: 20,
                    //     ),
                    //     const SizedBox(
                    //       width: 10,
                    //     ),
                    //     Text(
                    //       food.category.join(),
                    //       style: GoogleFonts.montserrat(
                    //           fontSize: 12, color: titleColor),
                    //     ),
                    //   ],
                    // ),
                    Text(
                      "Category : ",
                      style: GoogleFonts.montserrat(
                          fontSize: 16, color: subtitleColor, fontWeight: bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(237, 237, 237, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      onPressed: () {
                        setState(
                          () {
                            onCheckoutfoods = false;
                          },
                        );
                      },
                      child: Row(
                        children: [
                          Image(
                            image: AssetImage(widget.food.icon[0].toString()),
                            width: 20,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            widget.food.category[0],
                            style: grey_subtitleTextStyle,
                          ),
                        ],
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(237, 237, 237, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Image(
                            image: AssetImage(widget.food.icon[1].toString()),
                            width: 20,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            widget.food.category[1],
                            style: grey_subtitleTextStyle,
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          '12rb suka | 3jt lihat ',
                          style: GoogleFonts.montserrat(
                              fontSize: 10,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey),
                        ),
                        const Icon(
                          Icons.star,
                          color: Color.fromRGBO(255, 178, 0, 1),
                          size: 25,
                        ),
                        const Icon(
                          Icons.star,
                          color: Color.fromRGBO(255, 178, 0, 1),
                          size: 25,
                        ),
                        const Icon(
                          Icons.star,
                          color: Color.fromRGBO(255, 178, 0, 1),
                          size: 25,
                        ),
                        const Icon(
                          Icons.star,
                          color: Color.fromRGBO(255, 178, 0, 1),
                          size: 25,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '${widget.food.description}',
                      style: GoogleFonts.montserrat(
                          fontSize: 12, color: Colors.grey, fontWeight: medium),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: secondaryColor,
                            padding: EdgeInsets.symmetric(
                                horizontal: 150, vertical: 20),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            )),
                        onPressed: () {},
                        child: Text(
                          'Checkout',
                          style: GoogleFonts.montserrat(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: bold),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              FoodImage(
                food: widget.food,
                onChart: (bool? value) {},
              ),
            ]),
          )
        ],
      ),
    );
  }
}

class FoodImage extends StatelessWidget {
  const FoodImage({
    super.key,
    required this.food,
    required this.onChart,
  });
  final Function(bool? value) onChart;
  final Food food;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: defaultPadding,
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          '${food.title}',
          style: titleTextStyle,
        ),
        Row(
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                      text: "Price\n",
                      style: GoogleFonts.montserrat(
                          fontSize: 12, fontWeight: medium)),
                  TextSpan(
                    text: '\Rp.${food.price}',
                    style: GoogleFonts.montserrat(
                        fontSize: 20, color: titleColor, fontWeight: bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
                child: Image.asset(
              food.image,
              fit: BoxFit.fitWidth,
            ))
          ],
        ),
      ]),
    );
  }
}
