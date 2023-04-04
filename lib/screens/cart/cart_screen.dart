import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loka/screens/detail/detail_screen.dart';
import 'package:loka/theme.dart';
import 'package:provider/provider.dart';

import '../../model/food_model.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.grey[800],
        ),
      ),
      body: Consumer<Food>(
        builder: (context, value, child) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Let's order fresh items for you
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Text(
                  "My Wishlist",
                  style: GoogleFonts.montserrat(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              // list view of cart
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ListView.builder(
                    itemCount: value.cartfood.length,
                    padding: EdgeInsets.all(12),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailScreen(),
                            ),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8)),
                              width: 180,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                    child: Image.asset(
                                      value.cartfood[index][5],
                                      width: 140,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(20),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          value.cartfood[index][0],
                                          style: GoogleFonts.montserrat(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: titleColor),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
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
                                              color: Color.fromRGBO(
                                                  255, 178, 0, 1),
                                              size: 15,
                                            ),
                                            const Icon(
                                              Icons.star,
                                              color: Color.fromRGBO(
                                                  255, 178, 0, 1),
                                              size: 15,
                                            ),
                                            const Icon(
                                              Icons.star,
                                              color: Color.fromRGBO(
                                                  255, 178, 0, 1),
                                              size: 15,
                                            ),
                                            const Icon(
                                              Icons.star,
                                              color: Color.fromRGBO(
                                                  255, 178, 0, 1),
                                              size: 15,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizedBox(
                                              width: 90,
                                              height: 40,
                                              child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  elevation: 0,
                                                  backgroundColor:
                                                      secondaryColor,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16),
                                                  ),
                                                ),
                                                onPressed: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          DetailScreen(),
                                                    ),
                                                  );
                                                },
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
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
                                                      style: GoogleFonts
                                                          .montserrat(
                                                              fontWeight:
                                                                  medium,
                                                              fontSize: 10,
                                                              color:
                                                                  Colors.white),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 90,
                                              height: 40,
                                              child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  elevation: 0,
                                                  backgroundColor: Colors.red,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16),
                                                  ),
                                                ),
                                                onPressed: () =>
                                                    Provider.of<Food>(context,
                                                            listen: false)
                                                        .removeFoodFromCart(
                                                            index),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    const Icon(
                                                      Icons.delete,
                                                      size: 16,
                                                    ),
                                                    const SizedBox(
                                                      width: 6,
                                                    ),
                                                    Text(
                                                      'Delete',
                                                      style: GoogleFonts
                                                          .montserrat(
                                                              fontWeight:
                                                                  medium,
                                                              fontSize: 10,
                                                              color:
                                                                  Colors.white),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Text(
                                              'Rp.${value.cartfood[index][4]}',
                                              style: GoogleFonts.montserrat(
                                                  fontSize: 14,
                                                  color: titleColor,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      );
                    },
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(36.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.black,
                  ),
                  padding: const EdgeInsets.all(24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Jumlah Harga',
                            style: TextStyle(color: secondaryColor),
                          ),

                          const SizedBox(height: 8),
                          // total price
                          Text(
                            '\Rp.${value.calculatePrice().toString()}',
                            style: GoogleFonts.montserrat(
                                fontSize: 12,
                                color: primaryColor,
                                fontWeight: semibold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
