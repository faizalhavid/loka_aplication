import 'dart:async';

import 'package:flutter/material.dart';
import 'package:loka/theme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    Timer(const Duration(seconds: 3),
        () => Navigator.pushNamed(context, '/menu'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          height: 312,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/icons/loka_icon.png'),
            ),
          ),
        ),
      ),
    );
  }
}
