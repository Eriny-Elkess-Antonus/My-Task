// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/meetingTimeProvider.dart';
import 'meetingTimeListItem.dart';

class MeetingTimeList extends StatelessWidget {
  const MeetingTimeList({super.key});

  @override
  Widget build(BuildContext context) {
    final meetingTimes = context.read<MettingProvider>();
    final meetingTime = meetingTimes.mettingTime;
    return Scrollbar(
      trackVisibility: true,
      thumbVisibility: true,
      interactive: false,
      child: ListView.separated(
        padding: const EdgeInsets.all(12),
        itemCount: meetingTime.length,
        separatorBuilder: (_, __) => const SizedBox.square(dimension: 12),
        itemBuilder: (context, index) {
          return MettingTimeListItem(
            meetingTime: meetingTime[index],
          );
        },
      ),
    );
  }
}
