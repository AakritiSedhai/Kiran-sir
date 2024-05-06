import 'dart:async';

import 'package:class_test/screen/grid_view_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to the next screen after 2 seconds
    Timer(
      const Duration(seconds: 2),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const GridVIewScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Welcome Aakriti")),
    );
  }
}
