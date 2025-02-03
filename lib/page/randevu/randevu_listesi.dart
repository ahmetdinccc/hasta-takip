import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:patient_tracking_application/page/randevu/randevu_card.dart';
import 'package:patient_tracking_application/widget/button1.dart';

class RandevuListesi extends StatefulWidget {
  const RandevuListesi({super.key,required this.hastaIsimleri});
  final String hastaIsimleri;


  @override
  State<RandevuListesi> createState() => _RandevuListesiState();
}

class _RandevuListesiState extends State<RandevuListesi> {
  List<String> randevuOperasyon = [
    "Diş Teli",
    "İmplant",
    "Gülüş Tasarımı",
  ];

  void delete(int index) {
    setState(() {
      randevuOperasyon.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: randevuOperasyon.length,
      itemBuilder: (context, index) {
        return Slidable(
          endActionPane: ActionPane(
            motion: const StretchMotion(),
            children: [
              SlidableAction(
                onPressed: (context) {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        backgroundColor: Colors.grey,
                        title: Center(
                          child: Text(
                            "${randevuOperasyon[index]} müşteri'nin randevusunu silmek istediğinizden emin misiniz?",
                            style: const TextStyle(
                                color: Colors.white, fontSize: 16),
                          ),
                        ),
                        content: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MyButton1(
                                buttonclick: () {
                                  delete(index);
                                  Navigator.of(context).pop();
                                },
                                buttontext: "Evet",
                                textcolor: Colors.white,
                                backcolor: Colors.green,
                                height: 50,
                                width: 100,
                                border: BorderRadius.circular(10)),
                            MyButton1(
                                buttonclick: () {
                                  Navigator.pop(context);
                                },
                                buttontext: "Hayır",
                                textcolor: Colors.white,
                                backcolor: Colors.red,
                                height: 50,
                                width: 100,
                                border: BorderRadius.circular(10)),
                          ],
                        ),
                      );
                    },
                  );
                },
                icon: Icons.delete,
                backgroundColor: Colors.red,
              ),
            ],
          ),
          child:RandevuCard( hastaIsimleri: widget.hastaIsimleri, randevuOperasyon: randevuOperasyon[index])
        );
      },
    );
  }
}
