// ignore_for_file: avoid_unnecessary_containers, file_names

import 'package:flutter/material.dart';

import '../model/meetingTmemodel.dart';

class MettingTimeListItem extends StatelessWidget {
  const MettingTimeListItem({super.key, required this.meetingTime});
  final MeetingTime meetingTime;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
          margin: const EdgeInsets.symmetric(horizontal: 10),
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: ListTile(
            isThreeLine: true,
            leading: Image.asset(meetingTime.image),
            title: Text(
              meetingTime.text1,
              style: const TextStyle(fontSize: 30),
            ),
            subtitle: Column(
              children: [
                Text(
                  meetingTime.text2,
                  style: const TextStyle(color: Colors.blue),
                ),
                Text(
                  meetingTime.text3,
                  style: const TextStyle(color: Colors.blue),
                )
              ],
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(right: 10),
          alignment: Alignment.center,
          height: 30,
          width: 110,
          decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    10.0,
                  ),
                  bottomRight: Radius.circular(
                    10.0,
                  ))),
          child: Text(
            meetingTime.time,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
