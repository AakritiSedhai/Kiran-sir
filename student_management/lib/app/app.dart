import 'package:flutter/material.dart';
import 'package:student_management/Screen/social_media_screen.dart';
import 'package:student_management/Screen/student_details.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SocialMediaScreen(),
    );
  }
}
