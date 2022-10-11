// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../DetailsScreen/page/detailsScreenPage.dart';
import '../widget/curveClip.dart';
import '../widget/customSquare.dart';
import '../widget/dayList.dart';
import '../widget/meetingtimeList.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    final en = AppLocalizations.of(context);
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 20.0),
        child: Stack(children: [
          Container(
            padding: const EdgeInsets.only(top: 20.0),
            color: const Color(0xFF439AE1),
            child: Stack(children: [
              Container(
                color: const Color(0xFF439AE1),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          right: width >= 500 ? 100 : 30.0,
                          top: width >= 600 ? 30 : 10),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: CircleAvatar(
                          radius: width >= 600 ? 40 : 25.0,
                          backgroundColor: Colors.white,
                          backgroundImage: const NetworkImage(
                              'https://cdn-icons-png.flaticon.com/512/21/21104.png'),
                        ),
                      ),
                    ),
                    Expanded(
                        child: Padding(
                      padding: EdgeInsets.only(
                          top: width >= 900 ? 400 : 260,
                          right: width >= 600 ? 40 : 20.0),
                      child: const MeetingTimeList(),
                    )),
                  ],
                ),
              ),
            ]),
          ),
          ClipPath(
            clipper: CurveClip(),
            child: SizedBox(
              height: width >= 600 ? height * 0.5 : height * 0.56,
              width: double.infinity,
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 22.0, 20.0, 22.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                          padding:
                              EdgeInsets.only(top: width >= 600 ? 30 : 20.0),
                          child: Row(
                            children: const [
                              Icon(Icons.drag_handle, size: 40.0),
                              SizedBox(width: 20.0),
                              Icon(
                                Icons.notifications_none,
                                size: 40.0,
                                color: Colors.blue,
                              ),
                            ],
                          )),
                      SizedBox(
                        height: width >= 600 ? 70 : 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            en!.myTask,
                            style: const TextStyle(
                                fontSize: 40, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                right: width >= 600 ? 30.0 : 0.0),
                            child: CustomSquareWidget(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const DetailsScreenPage(),
                                  ),
                                );
                              },
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: width >= 600 ? 30 : 15.0,
                      ),
                      Row(children: [
                        Text(
                          en.today,
                          style: const TextStyle(fontSize: 20),
                        ),
                        const Spacer(
                          flex: 1,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text(
                            en.day,
                            style: const TextStyle(color: Colors.blue),
                          ),
                        ),
                      ]),
                      SizedBox(
                        height: width >= 600 ? 30 : 20.0,
                      ),
                      const DayList(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
