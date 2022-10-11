// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../model/day.dart';

class DayListItem extends StatelessWidget {
  const DayListItem({super.key, required this.day, required this.isSelect});
  final Day day;
  final bool isSelect;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: isSelect == true
              ? const Color.fromARGB(255, 30, 105, 167)
              : Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
              color: Colors.blue, style: BorderStyle.solid, width: 1.5),
        ),
        child: SizedBox(
            width: 60,
            height: 55,
            child: Column(
              children: [
                Text(
                  day.number,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  day.litter,
                  style: const TextStyle(color: Colors.blue),
                )
              ],
            )),
      ),
    );
  }
}
