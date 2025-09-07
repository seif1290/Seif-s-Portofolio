import 'package:flutter/material.dart';
import 'package:seif_portofolio/core/ui/app_theme.dart';
import 'package:seif_portofolio/presentation/sections/home_screen.dart';

void main() {
  runApp(const PortofolioApp());
}

class PortofolioApp extends StatelessWidget {
  const PortofolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      theme: appTheme(context),
    );
  }
}
