import 'package:flutter/material.dart';

class DropDownCinsiyet extends StatefulWidget {
  const DropDownCinsiyet({super.key});

  @override
  State<DropDownCinsiyet> createState() => _DropDownCinsiyetState();
}

class _DropDownCinsiyetState extends State<DropDownCinsiyet> {
  String? cinsiyet = 'Seçiniz';

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: cinsiyet,
      style: const TextStyle(color: Colors.black),
      underline: Container(
        height: 2,
        color: Colors.white,
      ),
      onChanged: (String? newValue) {
        setState(() {
          cinsiyet = newValue!;
        });
      },
      items: const [
        DropdownMenuItem<String>(
          value: 'Seçiniz',
          child: Text("Seçiniz"),
        ),
        DropdownMenuItem<String>(
          value: 'Erkek',
          child: Text("Erkek"),
        ),
        DropdownMenuItem<String>(
          value: 'Kadın',
          child: Text("Kadın"),
        ),
      ],
    );
  }
}
