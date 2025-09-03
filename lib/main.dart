import 'package:flutter/material.dart';
import 'package:seif_portofolio/features/home/presentation/screens/home_screen.dart';

void main() {
  runApp(const SeifPortofolioApp());
}

class SeifPortofolioApp extends StatelessWidget {
  const SeifPortofolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
