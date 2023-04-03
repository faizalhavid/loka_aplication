import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:loka/theme.dart';
import 'package:loka/model/food_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'components/body_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int activeIndex = 0;
  final controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(250, 249, 251, 1),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(400),
        child: buildAppbar(context),
      ),
      body: const Body(),
    );
  }

  AppBar buildAppbar(BuildContext context) {
    return AppBar(
      flexibleSpace: Stack(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CarouselSlider.builder(
            options: CarouselOptions(
              viewportFraction: 1,
              height: 400,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 4),
              onPageChanged: (index, reason) =>
                  setState(() => activeIndex = index),
            ),
            itemCount: urlImages.length,
            itemBuilder: (context, index, realIndex) {
              final urlImage = urlImages[index];
              final titleEvent = titleEvents[index];
              final subtitleEvent = subtitleEvents[index];
              return buildImage(urlImage, titleEvent, subtitleEvent, index);
            },
          ),
          Positioned(
              top: 350,
              left: MediaQuery.of(context).size.width * 0.45,
              right: MediaQuery.of(context).size.width * 0.45,
              child: buildIndicator())
        ],
      ),
      leading: IconButton(
        icon: const Icon(Icons.account_circle_rounded),
        color: Colors.white,
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('Profile'),
                  content: Column(
                    children: const [Text('Nama : Mohamad Faizal Norhavid')],
                  ),
                );
              });
        },
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      title: Text(
        'Loka',
        style: lightTitleStyle,
      ),
      actions: [
        const SizedBox(
          width: 30,
        ),
        Container(
          padding: const EdgeInsets.only(right: 15),
          child: const Icon(
            Icons.shopping_cart,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget buildImage(String urlImage, String titleEvents, String subtitleEvent,
          int index) =>
      Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(urlImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height / 3.3,
              left: 15,
              right: 15),
          child: RichText(
            text: TextSpan(
              text: titleEvents,
              style: titleTextStyle,
              children: <TextSpan>[
                TextSpan(text: subtitleEvent, style: subtitleTextStyle),
              ],
            ),
          ),
        ),
      );
  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: urlImages.length,
        onDotClicked: animatedToSlide,
        effect: ScrollingDotsEffect(
          activeDotColor: secondaryColor,
          dotColor: primaryColor,
          dotHeight: 10,
          dotWidth: 10,
        ),
      );
  void animatedToSlide(int index) => controller.animateToPage(index);
}
