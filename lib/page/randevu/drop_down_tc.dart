import 'package:flutter/material.dart';
import 'package:patient_tracking_application/models/hastalar.dart';

class TcSecmeDropdown extends StatefulWidget {
  const TcSecmeDropdown({super.key});

  @override
  State<TcSecmeDropdown> createState() => _TcSecmeDropdownState();
}

class _TcSecmeDropdownState extends State<TcSecmeDropdown> {
  String? secilenTc = 'Seçiniz';

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: secilenTc,
      style: const TextStyle(color: Colors.black),
      underline: Container(
        height: 2,
        color: Colors.white,
      ),
      onChanged: (secilenDeger) {
        setState(() {
          secilenTc = secilenDeger!;
        });
      },
      items: <DropdownMenuItem<String>>[
        const DropdownMenuItem<String>(
          value: 'Seçiniz',
          child: Text('Seçiniz'),
        ),
        ...hastalar.map((String deger) {
          return DropdownMenuItem<String>(
            value: deger,
            child: Text(deger),
          );
        }),
      ],
    );
  }
}
