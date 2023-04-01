import 'package:flutter/material.dart';
import 'package:loka/pages/home_Screen.dart';
import 'package:loka/pages/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashScreen(),
        '/menu': (context) => const HomeScreen()
      },
    );
  }
}
