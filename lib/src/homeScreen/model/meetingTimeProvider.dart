import 'package:flutter/material.dart';

import 'meetingTmemodel.dart';

class MettingProvider extends ChangeNotifier {
  final List<MeetingTime> _mettingTime = [
    MeetingTime(
        text1: 'Team Meeting',
        text2: 'Discuss all Auestions',
        text3: 'about new projects',
        image: 'assets/image/1.png',
        time: '10:00 Am'),
    MeetingTime(
        text1: 'Call the stylist',
        text2: 'Agree on an evening',
        text3: '          look',
        image: 'assets/image/callicon.png',
        time: '11:00 Am'),
    MeetingTime(
        text1: 'Check mail',
        text2: 'write to the manger',
        text3: ' about new projects',
        image: 'assets/image/mailicon.png',
        time: '3:00 pm'),
  ];
  List<MeetingTime> get mettingTime {
    return [..._mettingTime];
  }
}
