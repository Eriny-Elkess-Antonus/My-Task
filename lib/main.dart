// ignore_for_file: depend_on_referenced_packages, unused_import

import 'package:flutter/material.dart';
import 'package:mytaskapp/src/homeScreen/model/dayProvider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:mytaskapp/src/them.dart';
import 'package:provider/provider.dart';

import 'src/DetailsScreen/widget/selecetDate.dart';
import 'src/homeScreen/model/meetingTimeProvider.dart';
import 'src/homeScreen/page/homePage.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => DayProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => MettingProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'My Task',
        theme: them,
        debugShowCheckedModeBanner: false,
        locale: const Locale('en'),
        supportedLocales: const [Locale('en')],
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        home: const HomePage(),
      ),
    );
  }
}
