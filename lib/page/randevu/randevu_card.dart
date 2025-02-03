import 'package:flutter/material.dart';
import 'package:patient_tracking_application/page/randevu%20bilgileri/randevu_bilgileri.dart';

class RandevuCard extends StatelessWidget {
  const RandevuCard(
      {super.key,
      
      required this.hastaIsimleri,
      required this.randevuOperasyon});


  final String hastaIsimleri;
  final String randevuOperasyon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(randevuOperasyon),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RandevuBilgileri(
              ad: hastaIsimleri,
              operasyon: randevuOperasyon,
            ),
          ),
        );
      },
    );
  }
}
