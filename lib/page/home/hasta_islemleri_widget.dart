import 'package:flutter/material.dart';
import 'package:patient_tracking_application/page/hasta%20kay%C4%B1t/hasta_kaydol.dart';
import 'package:patient_tracking_application/page/randevu/randevu_kayit.dart';
import 'package:patient_tracking_application/widget/button1.dart';

class MyIslemler extends StatefulWidget {
  const MyIslemler({super.key});

  @override
  State<MyIslemler> createState() => _MyIslemlerState();
}

class _MyIslemlerState extends State<MyIslemler> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return SizedBox(
                height: 250,
                width: 425,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 40, left: 24),
                      child: Text(
                        "İşlem Yapmak İstediğiniz Yeri Seçiniz",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    MyButton1(
                      buttonclick: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HastaKayit()));
                      },
                      buttontext: "Yeni Hasta Ekle",
                      textcolor: Colors.white,
                      backcolor: Colors.green,
                      width: 370,
                      height: 60,
                      border: BorderRadius.circular(30),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    MyButton1(
                      buttonclick: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RandevuKayit()));
                      },
                      buttontext: "Sisteme Kayıtlı Olan Hastaya Randevu Ekle",
                      textcolor: Colors.white,
                      backcolor: Colors.green,
                      width: 370,
                      height: 60,
                      border: BorderRadius.circular(30),
                    )
                  ],
                ),
              );
            });
      },
      tooltip: "Hasta Ekle",
      child: const Icon(Icons.add),
    );
  }
}
