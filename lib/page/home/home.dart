import 'package:flutter/material.dart';
import 'package:patient_tracking_application/page/home/hasta_listesi.dart';
import 'package:patient_tracking_application/page/home/drop_kullanici.dart';
import 'package:patient_tracking_application/page/home/hasta_islemleri_widget.dart';
import 'package:patient_tracking_application/widget/text_field.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController araController = TextEditingController();

  String _searchText = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 40, left: 20),
                child: Text(
                  "Kayıtlı Hastalar",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40, right: 20),
                child: DropDownKullanici(),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: MyTextField(
                onchanged: (value) {
                  setState(() {
                    _searchText = value;
                  });
                },
                controller: araController,
                textt: "Aramak İstediğiniz Hasta'nın İsmini Yazınız"),
          ),
          Expanded(
              child: HastaListesi(
            searchText: _searchText,
          )),
          const Padding(
              padding: EdgeInsets.only(left: 320, bottom: 20),
              child: MyIslemler())
        ],
      ),
    );
  }
}
