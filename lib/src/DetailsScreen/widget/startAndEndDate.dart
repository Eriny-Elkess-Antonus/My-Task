// ignore_for_file: file_names, unused_element, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../wedgit/customTextForm.dart';

class SartAndEndDate extends StatefulWidget {
  const SartAndEndDate({super.key});

  @override
  State<SartAndEndDate> createState() => _SartAndEndDateState();
}

class _SartAndEndDateState extends State<SartAndEndDate> {
  TextEditingController startControl = TextEditingController();
  TextEditingController endControl = TextEditingController();
  TimeOfDay time = TimeOfDay.now();
  TimeOfDay time1 = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    final en = AppLocalizations.of(context);
    var width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              en!.startDate,
              style: TextStyle(color: Colors.blue, fontSize: 20),
            ),
            SizedBox(
              width: width >= 600 ? 180 : 140,
              height: width >= 600 ? 60 : 40,
              child: CustomTextForm(
                isIcon: true,
                onPress: () async {
                  TimeOfDay? newTime = await showTimePicker(
                      context: context, initialTime: time1);
                  if (newTime == null) return;
                  time1 = newTime;
                  startControl.text = time1.format(context).toString();
                },
                controller: startControl,
              ),
            ),
          ],
        ),
        const Spacer(
          flex: 1,
        ),
        Column(
          children: [
            Text(
              en.endDate,
              style: const TextStyle(color: Colors.blue, fontSize: 20),
            ),
            SizedBox(
              width: width >= 600 ? 180 : 140,
              height: width >= 600 ? 60 : 40,
              child: CustomTextForm(
                isIcon: true,
                onPress: () async {
                  TimeOfDay? newTime =
                      await showTimePicker(context: context, initialTime: time);
                  if (newTime == null) return;
                  time = newTime;
                  endControl.text = time.format(context).toString();
                },
                controller: endControl,
              ),
            ),
          ],
        )
      ],
    );
  }
}
