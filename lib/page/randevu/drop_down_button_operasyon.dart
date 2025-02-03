import 'package:flutter/material.dart';
import 'package:patient_tracking_application/models/opreasyon.dart';

class DropDownOperasyon extends StatefulWidget {
  final Function(String?, int?)? onChanged;

  const DropDownOperasyon({
    super.key,
    this.onChanged,
  });

  @override
  State<DropDownOperasyon> createState() => _DropDownOperasyonState();
}

class _DropDownOperasyonState extends State<DropDownOperasyon> {
  String? operasyon = 'Seçiniz';

  @override
  Widget build(BuildContext context) {
    List<DropdownMenuItem<String>> operasyonlar =
        sampleOperasyon.map((operasyon) {
      return DropdownMenuItem<String>(
        value: operasyon.name,
        child: Text(operasyon.name!),
      );
    }).toList();

    return DropdownButton<String>(
      value: operasyon,
      style: const TextStyle(color: Colors.black),
      underline: Container(
        height: 2,
        color: Colors.white,
      ),
      onChanged: (secilenDeger) {
        setState(() {
          operasyon = secilenDeger;
        });

        if (widget.onChanged != null && secilenDeger != 'Seçiniz') {
          final selectedOperasyon = sampleOperasyon
              .firstWhere((operasyon) => operasyon.name == secilenDeger);
          widget.onChanged!(selectedOperasyon.name, selectedOperasyon.price);
        } else if (widget.onChanged != null) {
          widget.onChanged!(null, null);
        }
      },
      items: [
        const DropdownMenuItem(value: "Seçiniz", child: Text("Seçiniz")),
        ...operasyonlar,
      ],
    );
  }
}
