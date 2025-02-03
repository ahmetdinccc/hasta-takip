import 'package:flutter/material.dart';

class MyBorderText extends StatefulWidget {
  const MyBorderText({super.key, required this.text});
  final String text;

  @override
  State<MyBorderText> createState() => _MyBorderTextState();
}

class _MyBorderTextState extends State<MyBorderText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: Container(
        width: 240,
        height: 60,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 2),
            borderRadius: BorderRadius.circular(30)),
        child: Center(
          child: Text(
            widget.text,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
