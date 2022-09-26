// ignore_for_file: depend_on_referenced_packages, file_names

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/categoryProvider.dart';
import '../widget/detalisScreenwidget.dart';

class DetailsScreenPage extends StatelessWidget {
  const DetailsScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CategoryProvider(),
      child: Scaffold(
        appBar: AppBar(
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.drag_handle,
                size: 40.0,
                color: Colors.grey,
              ),
            )
          ],
        ),
        body: const DetailsScreenWidget(),
      ),
    );
  }
}
