import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// => COLOR
Color primaryColor = const Color.fromARGB(255, 255, 255, 255);
Color secondaryColor = const Color.fromRGBO(255, 178, 0, 1);
Color titleColor = const Color.fromRGBO(63, 71, 115, 1);
Color subtitleColor = const Color.fromRGBO(0, 0, 0, 1);
Color grey = const Color.fromRGBO(126, 126, 126, 1);

// => FONT WEIGHT
FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semibold = FontWeight.w600;
FontWeight bold = FontWeight.w700;

//=> FONT STYLE
TextStyle titleTextStyle =
    GoogleFonts.montserrat(color: primaryColor, fontSize: 28, fontWeight: bold);
TextStyle dark_titleTextStyle =
    GoogleFonts.montserrat(color: titleColor, fontSize: 28, fontWeight: bold);
TextStyle grey_subtitleTextStyle =
    GoogleFonts.montserrat(color: grey, fontSize: 12, fontWeight: medium);
TextStyle subtitleTextStyle = GoogleFonts.montserrat(
    color: primaryColor, fontSize: 12, fontWeight: medium);
TextStyle dark_subtitleTextStyle = GoogleFonts.montserrat(
    color: subtitleColor, fontSize: 12, fontWeight: medium);
TextStyle lightTitleStyle =
    GoogleFonts.montserrat(color: primaryColor, fontWeight: medium);

// => PADDING
const defaultPadding = 20.0;
