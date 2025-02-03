import 'package:flutter/material.dart';
import 'package:patient_tracking_application/widget/button1.dart';

class RandevuTime extends StatefulWidget {
  const RandevuTime({super.key});

  @override
  State<RandevuTime> createState() => _RandevuTimeState();
}

class _RandevuTimeState extends State<RandevuTime> {
  TimeOfDay selectedTime = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "${selectedTime.hour}:${selectedTime.minute}",
          style: const TextStyle(color: Colors.black),
        ),
        MyButton1(
          buttonclick: () async {
            final TimeOfDay? timeOfDay = await showTimePicker(
                context: context,
                initialTime: selectedTime,
                initialEntryMode: TimePickerEntryMode.dial);
            if (timeOfDay != null) {
              setState(() {
                selectedTime = timeOfDay;
              });
            }
          },
          buttontext: "Saat Seç",
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
