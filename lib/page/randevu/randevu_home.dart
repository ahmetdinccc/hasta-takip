import 'package:flutter/material.dart';
import 'package:patient_tracking_application/page/randevu/randevu_listesi.dart';

class RandevuHome extends StatefulWidget {
  const RandevuHome({super.key, required this.hastaIsimleri});
  final String hastaIsimleri;

  @override
  State<RandevuHome> createState() => _RandevuHomeState();
}

class _RandevuHomeState extends State<RandevuHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Kayıtlı Olan Hastaların Randevuleri",
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 30),
            child: Text(
              widget.hastaIsimleri,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          Expanded(child: RandevuListesi(hastaIsimleri: widget.hastaIsimleri)),
        ],
      ),
    );
  }
}
