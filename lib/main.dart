import 'package:chapter_nine/home_screen.dart';
import 'package:chapter_nine/log_in.dart';
import 'package:chapter_nine/splass_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: LoginScreen(),
      routes: {
        '/' : (context) => const SplashScreen(),
        '/login' : (context) => LoginScreen(),
        '/homepage' : (context) => const HomeScreen(),
      },
    );
  }
}
