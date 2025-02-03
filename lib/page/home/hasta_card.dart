import 'package:flutter/material.dart';
import 'package:patient_tracking_application/page/hasta%20bilgileri/hasta_bilgileri.dart';

class HastaCard extends StatelessWidget {
  const HastaCard({super.key, required this.ad, required this.hastaIsimleri});

  final String ad;
  final String hastaIsimleri;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(ad),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HastaBilgileri(
              ad1: hastaIsimleri,
            ),
          ),
        );
      },
    );
  }
}
