import 'package:flutter/material.dart';
import 'package:patient_tracking_application/page/admin%20kay%C4%B1t/kaydol.dart';
import 'package:patient_tracking_application/widget/button1.dart';
import 'package:patient_tracking_application/page/admin%20uygulamaya%20giri%C5%9F%20i%C5%9Flemleri/giris_yap.dart';

class Selection extends StatefulWidget {
  const Selection({super.key});

  @override
  State<Selection> createState() => _SelectionState();
}

class _SelectionState extends State<Selection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Image.asset("assets/images/54.jpg"),
              ),
              const GirisYap(),
              const Text(
                "Hesabınız Yok Mu? ↓",
                style: TextStyle(color: Color(0xFF666666)),
              ),
              const SizedBox(
                height: 10,
              ),
              MyButton1(
                buttonclick: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Kaydol()));
                },
                buttontext: "Kayıt Ol",
                textcolor: Colors.white,
                backcolor: Colors.red,
                width: 370,
                height: 60,
                border: BorderRadius.circular(30),
              ),
              const SizedBox(
                height: 150,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
