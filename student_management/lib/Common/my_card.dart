import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  MyCard({super.key, required this.cardText});
  String cardText;

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.amber,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(cardText));
  }
}
