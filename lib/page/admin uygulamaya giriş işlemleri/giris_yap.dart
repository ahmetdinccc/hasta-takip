import 'package:flutter/material.dart';
import 'package:patient_tracking_application/page/home/home.dart';
import 'package:patient_tracking_application/widget/button1.dart';
import 'package:patient_tracking_application/widget/text_field.dart';

class GirisYap extends StatefulWidget {
  const GirisYap({super.key});

  @override
  State<GirisYap> createState() => _GirisYapState();
}

class _GirisYapState extends State<GirisYap> {
  final TextEditingController epostaController = TextEditingController();
  final TextEditingController _sifreController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.only(bottom: 30, top: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: MyTextField(
                  onchanged: (value) {},
                  controller: epostaController,
                  textt: "E-posta"),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
              child: MyTextField(
                  onchanged: (value) {},
                  controller: _sifreController,
                  textt: "Şifre"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: MyButton1(
                buttonclick: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => const Home()));
                },
                buttontext: "Giriş Yap",
                textcolor: Colors.white,
                backcolor: Colors.blue,
                width: 370,
                height: 60,
                border: BorderRadius.circular(30),
              ),
            )
          ],
        ),
      ),
    ]);
  }
}
