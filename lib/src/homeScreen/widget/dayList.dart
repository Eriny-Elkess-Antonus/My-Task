// ignore_for_file: depend_on_referenced_packages, file_names

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/dayProvider.dart';
import 'dayListItem.dart';

class DayList extends StatelessWidget {
  const DayList({super.key});

  @override
  Widget build(BuildContext context) {
    final days = context.read<DayProvider>();
    final day = days.day;
    return SizedBox(
      height: 50,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: day.length,
        itemBuilder: (context, index) {
          return DayListItem(
            day: day[index],
            isSelect: true,
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(width: 25);
        },
      ),
    );
  }
}
