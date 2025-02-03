import 'package:flutter/material.dart';
import 'package:patient_tracking_application/widget/button1.dart';
import 'package:patient_tracking_application/widget/text_field.dart';

class Kaydol extends StatefulWidget {
  const Kaydol({super.key});

  @override
  State<Kaydol> createState() => _KaydolState();
}

class _KaydolState extends State<Kaydol> {
  final TextEditingController _adController = TextEditingController();
  final TextEditingController _epostaController = TextEditingController();
  final TextEditingController _sifreController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Admin Bilgileri"),
      ),
      body: SingleChildScrollView(
        child: Center(
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
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: MyTextField(
                              onchanged: (value) {},
                              controller: _adController,
                              textt: "Adınız - Soyadınız"),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: MyTextField(
                              onchanged: (value) {},
                              controller: _epostaController,
                              textt: "E-posta"),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: MyTextField(
                              onchanged: (value) {},
                              controller: _sifreController,
                              textt: "Şifre"),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: MyButton1(
                            buttonclick: () {},
                            buttontext: "Kayıt Ol",
                            textcolor: Colors.white,
                            backcolor: Colors.red,
                            width: 370,
                            height: 60,
                            border: BorderRadius.circular(30),
                          ),
                        ),
                        const Text(
                          "Hesabınız Var Mı? ↓",
                          style: TextStyle(color: Color(0xFF666666)),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: MyButton1(
                            buttonclick: () {
                              Navigator.pop(context);
                            },
                            buttontext: "Giriş Yap",
                            textcolor: Colors.white,
                            backcolor: Colors.blue,
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
                    'assets/images/tooth_1.png',
                    height: 80,
                    width: 80,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
