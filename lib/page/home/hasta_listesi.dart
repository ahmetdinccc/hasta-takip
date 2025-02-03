import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:patient_tracking_application/page/randevu/randevu_home.dart';
import 'package:patient_tracking_application/page/home/hasta_card.dart';
import 'package:patient_tracking_application/widget/button1.dart';
import 'package:patient_tracking_application/models/hastalar.dart';

class HastaListesi extends StatefulWidget {
  const HastaListesi({super.key, required this.searchText});

  final String searchText;

  @override
  State<HastaListesi> createState() => _HastaListesiState();
}

class _HastaListesiState extends State<HastaListesi> {
  void delete(int index) {
    setState(() {
      hastalar.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> filteredHastaIsimleri = hastalar.where((hasta) {
      return hasta.toLowerCase().startsWith(widget.searchText.toLowerCase());
    }).toList();

    return ListView.builder(
      itemCount: filteredHastaIsimleri.length,
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
                            "${filteredHastaIsimleri[index]} İsimli müşteriyi silmek istediğinizden emin misiniz?",
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
              SlidableAction(
                onPressed: (context) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RandevuHome(
                                hastaIsimleri: filteredHastaIsimleri[index],
                              )));
                },
                icon: Icons.list,
                backgroundColor: Colors.green,
              ),
            ],
          ),
          child: HastaCard(
            ad: filteredHastaIsimleri[index],
            hastaIsimleri: filteredHastaIsimleri[index],
          ),
        );
      },
    );
  }
}
