import 'package:flutter/material.dart';
import 'package:patient_tracking_application/widget/button1.dart';

class DatePickerRandevu extends StatefulWidget {
  const DatePickerRandevu({super.key});

  @override
  State<DatePickerRandevu> createState() => _DatePickerRandevuState();
}

class _DatePickerRandevuState extends State<DatePickerRandevu> {
  DateTime selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "${selectedDate.day}-${selectedDate.month}-${selectedDate.year}",
          style: const TextStyle(color: Colors.black),
        ),
        MyButton1(
          buttonclick: () async {
            DateTime? dateTime = await showDatePicker(
                context: context,
                firstDate: DateTime(2024),
                lastDate: DateTime(2030));

            if (dateTime != null) {
              setState(() {
                selectedDate = dateTime;
              });
            }
          },
          buttontext: "Tarih Seç",
          textcolor: Colors.white,
          backcolor: Colors.transparent,
          width: 130,
          height: 30,
          border: BorderRadius.circular(30),
        )
      ],
    );
  }
}
