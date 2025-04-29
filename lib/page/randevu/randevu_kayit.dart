import 'package:flutter/material.dart';
import 'package:patient_tracking_application/models/opreasyon.dart';
import 'package:patient_tracking_application/page/randevu/drop_down_tc.dart';
import 'package:patient_tracking_application/widget/button1.dart';
import 'package:patient_tracking_application/page/randevu/date_picker_randevu.dart';
import 'package:patient_tracking_application/page/randevu/drop_down_button_operasyon.dart';
import 'package:patient_tracking_application/page/randevu/time_picker_randevu.dart';

class RandevuKayit extends StatefulWidget {
  const RandevuKayit({super.key});

  @override
  State<RandevuKayit> createState() => _RandevuKayitState();
}

class _RandevuKayitState extends State<RandevuKayit> {
  final TextEditingController tcController = TextEditingController();
  String? selectedOperasyon;
  int? selectedOperasyonPrice;

  void _onOperasyonChanged(String? operasyonName, int? operasyonPrice) {
    setState(() {
      selectedOperasyon = operasyonName;
      selectedOperasyonPrice = operasyonPrice;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kayıtlı Hastaya Randevu Ekle"),
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
                            const Padding(
                              padding: EdgeInsets.only(
                                right: 27,
                                left: 27,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Hastayı seçiniz"),
                                  TcSecmeDropdown(),
                                ],
                              ),
                            ),
                            const Padding(
                              padding:
                                  EdgeInsets.only(right: 27, left: 27, top: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Randevu Tarihi"),
                                  DatePickerRandevu(),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  right: 27, left: 27, top: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text("Operasyon Seç"),
                                  DropDownOperasyon(
                                    onChanged: _onOperasyonChanged,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  right: 27, left: 27, top: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text("Fiyat"),
                                  Text("${selectedOperasyonPrice ?? ''}"),
                                ],
                              ),
                            ),
                            const Padding(
                              padding:
                                  EdgeInsets.only(right: 27, left: 27, top: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [Text("Saat Seç"), RandevuTime()],
                              ),
                            ),
                            const SizedBox(height: 10),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 20, left: 20),
                              child: MyButton1(
                                buttonclick: () {},
                                buttontext: "Hasta'nın Randevusunu Kaydet",
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
