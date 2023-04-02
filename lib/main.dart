import 'package:flutter/material.dart';
import 'package:loka/screens/home/home_screen.dart';
import 'package:loka/screens/splash_screen.dart';

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
