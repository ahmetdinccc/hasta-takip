import 'package:flutter/material.dart';
import 'package:patient_tracking_application/widget/border_text.dart';
import 'package:patient_tracking_application/widget/button1.dart';

class HastaBilgileri extends StatefulWidget {
  const HastaBilgileri({super.key, required this.ad1});
  final String ad1;

  @override
  State<HastaBilgileri> createState() => _HastaBilgileriState();
}

class _HastaBilgileriState extends State<HastaBilgileri> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Hasta Bilgisi")),
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
                        "Hasta'nın TC Kimlik Numarası:",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const MyBorderText(text: "14357423436"),
                      const Text(
                        "Hasta'nın Adı - Soyadı",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      MyBorderText(text: widget.ad1),
                      const Padding(
                        padding: EdgeInsets.only(
                          right: 20,
                          left: 20,
                        ),
                        child: Text(
                          "Hasta'nın Doğum Tarihi",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Padding(
                          padding: EdgeInsets.only(right: 20, left: 20),
                          child: MyBorderText(text: "21.06.2005")),
                      const Padding(
                        padding: EdgeInsets.only(right: 20, left: 20),
                        child: Text(
                          "Hasta'nın Cinsiyeti",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Padding(
                          padding: EdgeInsets.only(right: 20, left: 20),
                          child: MyBorderText(text: "Erkek")),
                      Padding(
                          padding: const EdgeInsets.only(
                              right: 20, left: 20, top: 20),
                          child: MyButton1(
                            buttonclick: () {},
                            buttontext: "Hasta'nın Bilgilerini Güncelle",
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
