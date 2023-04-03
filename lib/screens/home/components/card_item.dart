import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loka/model/food_model.dart';
import 'package:loka/theme.dart';

class BuildCard extends StatelessWidget {
  final Food food;
  final VoidCallback press;
  const BuildCard({Key? key, required this.food, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
              width: 180,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(16),
                // boxShadow: const [
                //   BoxShadow(color: Color.fromRGBO(63, 71, 115, 0.258), blurRadius: 25),
                // ],
              ),
              child: Column(
                children: [
                  Image.asset(
                    food.image,
                    width: 80,
                  ),
                  Text(
                    food.title,
                    style: GoogleFonts.montserrat(
                        fontSize: 12.5,
                        fontWeight: FontWeight.bold,
                        color: titleColor),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '12rb suka | 3jt lihat ',
                        style: GoogleFonts.montserrat(
                            fontSize: 8,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey),
                      ),
                      const Icon(
                        Icons.star,
                        color: Color.fromRGBO(255, 178, 0, 1),
                        size: 15,
                      ),
                      const Icon(
                        Icons.star,
                        color: Color.fromRGBO(255, 178, 0, 1),
                        size: 15,
                      ),
                      const Icon(
                        Icons.star,
                        color: Color.fromRGBO(255, 178, 0, 1),
                        size: 15,
                      ),
                      const Icon(
                        Icons.star,
                        color: Color.fromRGBO(255, 178, 0, 1),
                        size: 15,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: secondaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        onPressed: press,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Icon(
                              Icons.info,
                              size: 16,
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Text(
                              'Detail',
                              style: GoogleFonts.montserrat(
                                  fontWeight: medium,
                                  fontSize: 10,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.attach_money_sharp,
                            color: Color.fromRGBO(255, 178, 0, 1),
                            size: 16,
                          ),
                          Text(
                            food.price.toString(),
                            style: GoogleFonts.montserrat(
                                fontSize: 12,
                                color: titleColor,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
