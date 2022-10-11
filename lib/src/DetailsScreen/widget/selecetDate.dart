// ignore_for_file: file_names, unnecessary_import, implementation_imports, unused_field

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SelectDate extends StatefulWidget {
  const SelectDate({super.key});

  @override
  State<SelectDate> createState() => _SelectDateState();
}

class _SelectDateState extends State<SelectDate> {
  final DateTime _date = DateTime.now();
  TextEditingController date = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    final en = AppLocalizations.of(context);
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              en!.date,
              style: const TextStyle(color: Colors.blue, fontSize: 20),
            ),
            SizedBox(
              width: width >= 600 ? 250 : 230,
              height: width >= 600 ? 50 : 30,
              child: TextField(
                controller: date,
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
                initialDate: _date,
                firstDate: DateTime(2000),
                lastDate: DateTime(3030));
            if (newDate != null) {
              setState(() {
                date.text =
                    DateFormat('EEEEE, d MMMM').format(newDate).toString();
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
