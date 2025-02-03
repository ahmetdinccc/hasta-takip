import 'package:flutter/material.dart';
import 'package:patient_tracking_application/page/admin%20uygulamaya%20giri%C5%9F%20i%C5%9Flemleri/selection.dart';
import 'package:patient_tracking_application/widget/button1.dart';

class DropDownKullanici extends StatefulWidget {
  const DropDownKullanici({super.key});

  @override
  State<DropDownKullanici> createState() => _DropDownKullaniciState();
}

class _DropDownKullaniciState extends State<DropDownKullanici> {
  String? kullanci = "Ahmet Dinç";

  void logOut() {
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const Selection()),
        (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: kullanci,
      style: const TextStyle(color: Colors.black),
      underline: Container(
        height: 2,
        color: Colors.white,
      ),
      onChanged: (String? newValue) {
        setState(() {
          if (newValue == "LogOut") {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    backgroundColor: Colors.grey,
                    title: const Center(
                      child: Text(
                        "Hesaptan Çıkış yapmak istediğinizden emin misiniz?",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                    content: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyButton1(
                          buttonclick: () {
                            logOut();
                          },
                          buttontext: "Evet",
                          textcolor: Colors.white,
                          backcolor: Colors.green,
                          height: 50,
                          width: 100,
                          border: BorderRadius.circular(10),
                        ),
                        MyButton1(
                          buttonclick: () {
                            Navigator.pop(context);
                          },
                          buttontext: "Hayır",
                          textcolor: Colors.white,
                          backcolor: Colors.red,
                          height: 50,
                          width: 100,
                          border: BorderRadius.circular(10),
                        ),
                      ],
                    ),
                  );
                });
          } else {
            kullanci = newValue!;
          }
        });
      },
      items: const [
        DropdownMenuItem<String>(
          value: "Ahmet Dinç",
          child: Text("Ahmet Dinç"),
        ),
        DropdownMenuItem<String>(
          value: "LogOut",
          child: Text("LogOut"),
        ),
      ],
    );
  }
}
