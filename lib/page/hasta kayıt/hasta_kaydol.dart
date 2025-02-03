import 'package:flutter/material.dart';
import 'package:patient_tracking_application/widget/button1.dart';
import 'package:patient_tracking_application/page/hasta%20kay%C4%B1t/date_picker_dogum.dart';
import 'package:patient_tracking_application/page/hasta%20kay%C4%B1t/drop_down_button_cinsiyet.dart';
import 'package:patient_tracking_application/widget/text_field.dart';

class HastaKayit extends StatefulWidget {
  const HastaKayit({super.key});

  @override
  State<HastaKayit> createState() => _HastaKayitState();
}

class _HastaKayitState extends State<HastaKayit> {
  final TextEditingController tcController = TextEditingController();
  final TextEditingController adController = TextEditingController();
  final TextEditingController telController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Yeni Hasta Ekle"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: SizedBox(
                height: 650,
                width: 350,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30, top: 100),
                      child: Card(
                        color: const Color(0xFFEBEBEB),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, bottom: 20),
                              child: MyTextField(
                                  onchanged: (value) {},
                                  controller: tcController,
                                  textt: "Hasta'nın TC Kimlik Numarası"),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: MyTextField(
                                  onchanged: (value) {},
                                  controller: adController,
                                  textt: "Hasta'nın Adı - Soyadı"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  right: 20, left: 20, top: 20),
                              child: MyTextField(
                                  onchanged: (value) {},
                                  controller: telController,
                                  textt: "Hasta'nın Telefon Numarası"),
                            ),
                            const Padding(
                              padding:
                                  EdgeInsets.only(right: 27, left: 27, top: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Hastasta'nın Cinsiyeti"),
                                  DropDownCinsiyet()
                                ],
                              ),
                            ),
                            const Padding(
                              padding:
                                  EdgeInsets.only(right: 27, left: 27, top: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [Text("Doğum Tarihi"), DatePicker()],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 20, left: 20),
                              child: MyButton1(
                                buttonclick: () {},
                                buttontext: "Hastayı Kaydet",
                                textcolor: Colors.white,
                                backcolor: Colors.green,
                                width: 370,
                                height: 60,
                                border: BorderRadius.circular(30),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 140,
                      top: 70,
                      child: Image.asset(
                        'assets/images/tooth (1).png',
                        height: 80,
                        width: 80,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
