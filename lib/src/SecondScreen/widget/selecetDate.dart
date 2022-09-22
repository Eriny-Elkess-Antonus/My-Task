// ignore_for_file: file_names, unnecessary_import, implementation_imports, unused_field

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SelectDate extends StatefulWidget {
  const SelectDate({super.key});

  @override
  State<SelectDate> createState() => _SelectDateState();
}

class _SelectDateState extends State<SelectDate> {
  final DateTime date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    TextEditingController dates = TextEditingController();
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Date',
              style: TextStyle(color: Colors.blue, fontSize: 20),
            ),
            SizedBox(
              width: width >= 600 ? 250 : 230,
              height: width >= 600 ? 50 : 30,
              child: TextField(
                controller: dates,
              ),
            ),
          ],
        ),
        const Spacer(
          flex: 2,
        ),
        GestureDetector(
          onTap: () async {
            DateTime? newDate = await showDatePicker(
                context: context,
                initialDate: date,
                firstDate: DateTime(2000),
                lastDate: DateTime(3030));
            if (newDate != null) {
              setState(() {
                dates.text = DateFormat.MMMMEEEEd().format(newDate).toString();
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(right: 50.0),
            child: CircleAvatar(
              radius: width >= 600 ? 30 : 22,
              backgroundColor: const Color(0xff5797B0),
              child: Icon(
                Icons.date_range,
                size: width >= 600 ? 40 : 30,
              ),
            ),
          ),
        )
      ],
    );
  }
}
