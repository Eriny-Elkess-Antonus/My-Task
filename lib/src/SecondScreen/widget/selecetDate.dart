// ignore_for_file: file_names, unnecessary_import, implementation_imports

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mytaskapp/src/SecondScreen/widget/textForm.dart';

class SelectDate extends StatefulWidget {
  const SelectDate({super.key});

  @override
  State<SelectDate> createState() => _SelectDateState();
}

class _SelectDateState extends State<SelectDate> {
  late final DateTime date;
  late final String dateFormat;
  Future pickDate(BuildContext context) async {
    final initialDate = DateTime.now();
    final newDate = await showDatePicker(
      context: context,
      initialDate: date,
      firstDate: DateTime(DateTime.now().year - 5),
      lastDate: DateTime(DateTime.now().year + 5),
    );
    if (newDate == null) return;
    setState(() {
      date = newDate;
      dateFormat = DateFormat('EEEE, d MMMM').format(date).toString();
      final monthName = DateFormat('MMMM').format(date);
      final dayName = DateFormat('EEEE').format(date);
      final dayNumber = DateFormat('d').format(date);
    });
  }

  getText() {
    if (date != null) {
      return '${date.month}/${date.day}';
    }
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextForm(
          controller: getText(),
        ),
        GestureDetector(
          onTap: () => pickDate(context),
          child: Padding(
            padding: EdgeInsets.only(right: 50.0),
            child: CircleAvatar(
              radius: width >= 600 ? 30 : 22,
              backgroundColor: Color(0xff5797B0),
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
