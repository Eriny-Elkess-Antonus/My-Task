// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'day.dart';

class DayProvider extends ChangeNotifier {
  final List<Day> _day = [
    Day(number: '01', litter: 'M'),
    Day(number: '02', litter: 'T'),
    Day(number: '03', litter: 'W'),
    Day(number: '04', litter: 'T'),
    Day(number: '05', litter: 'M'),
  ];
  List<Day> get day {
    return [..._day];
  }
}
