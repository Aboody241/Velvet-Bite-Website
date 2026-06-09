import 'package:flutter/material.dart';
import 'package:velvet_bite/core/theme/app_theme.dart';
import 'package:velvet_bite/screens/home/home_screen.dart';

void main() {
  runApp(const VelvetBiteApp());
}

class VelvetBiteApp extends StatelessWidget {
  const VelvetBiteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Velvet Bite',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      home: const HomeScreen(),
    );
  }
}
