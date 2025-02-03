import 'package:flutter/material.dart';
import 'package:patient_tracking_application/page/randevu/randevu_kayit.dart';
import 'package:patient_tracking_application/widget/border_text.dart';
import 'package:patient_tracking_application/widget/button1.dart';

class RandevuBilgileri extends StatefulWidget {
  const RandevuBilgileri(
      {super.key, required this.operasyon, required this.ad});
  final String operasyon;
  final String ad;

  @override
  State<RandevuBilgileri> createState() => _RandevuBilgileriState();
}

class _RandevuBilgileriState extends State<RandevuBilgileri> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Hasta'nın Randevu Bilgisi")),
      body: Center(
        child: SizedBox(
          height: 670,
          width: 350,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Card(
                  color: const Color(0xFFEBEBEB),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 70),
                      const Text(
                        "Hasta'nın Adı - Soyadı:",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      MyBorderText(text: widget.ad),
                      const Text(
                        "Randevu Tarihi",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const MyBorderText(text: "15.05.2024"),
                      const Padding(
                        padding: EdgeInsets.only(
                          right: 20,
                          left: 20,
                        ),
                        child: Text(
                          "Operasyon",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(right: 20, left: 20),
                          child: MyBorderText(text: widget.operasyon)),
                      const Padding(
                        padding: EdgeInsets.only(right: 20, left: 20),
                        child: Text(
                          "Randevu Saati",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Padding(
                          padding: EdgeInsets.only(right: 20, left: 20),
                          child: MyBorderText(text: "16:00")),
                      Padding(
                          padding: const EdgeInsets.only(
                              right: 20, left: 20, top: 20),
                          child: MyButton1(
                            buttonclick: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const RandevuKayit()));
                            },
                            buttontext:
                                "Hasta'nın Randevu Bilgilerini Güncelle",
                            textcolor: Colors.white,
                            backcolor: Colors.green,
                            width: 370,
                            height: 60,
                            border: BorderRadius.circular(30),
                          )),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 135,
                top: 0,
                child: Image.asset(
                  'assets/images/health.png',
                  height: 80,
                  width: 80,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
