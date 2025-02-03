import 'package:flutter/material.dart';

class MyButton1 extends StatefulWidget {
  const MyButton1(
      {super.key,
      required this.buttonclick,
      required this.buttontext,
      required this.textcolor,
      required this.backcolor,
      required this.height,
      required this.width,
      required this.border});

  final String buttontext;
  final Function() buttonclick;
  final Color textcolor;
  final Color backcolor;
  final double height;
  final double width;
  final BorderRadiusGeometry border;

  @override
  State<MyButton1> createState() => _MyButton1State();
}

class _MyButton1State extends State<MyButton1> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      width: widget.width,
      child: ElevatedButton(
        onPressed: widget.buttonclick,
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: widget.border,
            ),
            backgroundColor: widget.backcolor),
        child: Text(
          widget.buttontext,
          style: TextStyle(fontSize: 16, color: widget.textcolor),
        ),
      ),
    );
  }
}
