// ignore_for_file: non_constant_identifier_names, file_names, sort_child_properties_last, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'categoryList.dart';
import 'selecetDate.dart';
import 'startAndEndDate.dart';
import 'textForm.dart';

class SecondScreenWidget extends StatefulWidget {
  const SecondScreenWidget({super.key});

  @override
  State<SecondScreenWidget> createState() => _SecondScreenWidgetState();
}

class _SecondScreenWidgetState extends State<SecondScreenWidget> {
  final _Controller = TextEditingController();
  final _description = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final en = AppLocalizations.of(context);
    var width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.only(
              left: width >= 600 ? 30 : 10, top: width >= 600 ? 50 : 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    en!.createNewTask,
                    style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  const Icon(
                    Icons.ad_units_outlined,
                    color: Colors.blue,
                    size: 50,
                  )
                ],
              ),
              SizedBox(
                height: width >= 600 ? 50 : 20,
              ),
              Text(
                en.taskName,
                style: const TextStyle(color: Colors.blue, fontSize: 20),
              ),
              TextForm(
                controller: _Controller,
              ),
              SizedBox(
                height: width >= 600 ? 10 : 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    en.selectCategory,
                    style: const TextStyle(color: Colors.blue, fontSize: 20),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      en.seeAll,
                      style: const TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: width >= 600 ? 50 : 20.0,
              ),
              const CategoryList(),
              SizedBox(
                height: width >= 600 ? 50 : 20.0,
              ),
              const SelectDate(),
              SizedBox(
                height: width >= 600 ? 50 : 20.0,
              ),
              const SartAndEndDate(),
              SizedBox(
                height: width >= 600 ? 50 : 20.0,
              ),
              Text(
                en.description,
                style: const TextStyle(color: Colors.blue, fontSize: 20),
              ),
              TextForm(
                controller: _description,
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: ElevatedButton(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      en.createTask,
                      style: const TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
