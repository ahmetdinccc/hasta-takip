import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  const MyTextField({
    super.key,
    required this.textt,
    required this.controller,
    required this.onchanged,
  });

  final String textt;
  final TextEditingController controller;
  final Function(String)? onchanged;

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: widget.onchanged,
      controller: widget.controller,
      decoration: InputDecoration(
        label: Text(widget.textt),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(color: Colors.black),
        ),
      ),
    );
  }
}
