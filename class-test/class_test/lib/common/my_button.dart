
import 'package:flutter/material.dart';
 
class MyButtonWidget extends StatefulWidget {
  String text;
 
  MyButtonWidget({super.key, required this.text});
 
  @override
  _MyButtonWidgetState createState() => _MyButtonWidgetState();
}
 
class _MyButtonWidgetState extends State<MyButtonWidget> {
  bool isColored = false;
  bool isVisible = true;
 
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (!isColored) {
            isColored = true;
          } else {
            isVisible = false;
          }
        });
      },
      child: Visibility(
        visible: isVisible,
        child: Container(
          width: 50,
          height: 50,
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: isColored ? Colors.blue : Colors.grey,
          ),
          child: Center(
            child: Text(
              widget.text,
              style: const TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
 