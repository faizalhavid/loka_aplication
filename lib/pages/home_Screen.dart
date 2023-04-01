import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:loka/theme.dart';
import 'package:loka/model/food_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(480),
        child: AppBar(
          flexibleSpace: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CarouselSlider.builder(
                options: CarouselOptions(
                  viewportFraction: 1,
                  height: 400,
                  autoPlay: true,
                  reverse: true,
                  autoPlayInterval: const Duration(seconds: 2),
                  onPageChanged: (index, reason) =>
                      setState(() => activeIndex = index),
                ),
                itemCount: urlImages.length,
                itemBuilder: (context, index, realIndex) {
                  final urlImage = urlImages[index];
                  return buildImage(urlImage, index);
                },
              ),
            ],
          ),
          leading: const Icon(
            Icons.account_circle_rounded,
            size: 34,
            color: Colors.white,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Loka',
            style: lightTitleStyle,
          ),
          actions: const [
            Icon(
              Icons.notifications_active,
              color: Colors.white,
              size: 32,
            ),
          ],
        ),
      ),
      body: ListView(
        children: const [],
      ),
    );
  }

  Widget buildImage(String urlImage, int index) => Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(urlImage),
            fit: BoxFit.cover,
          ),
        ),
      );
}
