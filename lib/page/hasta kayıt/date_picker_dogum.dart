import 'package:flutter/material.dart';
import 'package:patient_tracking_application/widget/button1.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({super.key});

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
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
                firstDate: DateTime(1940),
                lastDate: DateTime(2015));

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
