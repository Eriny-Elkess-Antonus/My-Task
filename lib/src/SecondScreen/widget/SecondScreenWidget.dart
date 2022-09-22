// ignore_for_file: non_constant_identifier_names, file_names, sort_child_properties_last, sized_box_for_whitespace

import 'package:flutter/material.dart';

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
                children: const [
                  Text(
                    'Create New Task',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.ad_units_outlined,
                    color: Colors.blue,
                    size: 50,
                  )
                ],
              ),
              SizedBox(
                height: width >= 600 ? 50 : 20,
              ),
              const Text(
                'Task Name',
                style: TextStyle(color: Colors.blue, fontSize: 20),
              ),
              TextForm(
                controller: _Controller,
              ),
              SizedBox(
                height: width >= 600 ? 10 : 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Select Category',
                    style: TextStyle(color: Colors.blue, fontSize: 20),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'see all',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: width >= 600 ? 50 : 20.0,
              ),
              CategoryList(),
              SizedBox(
                height: width >= 600 ? 50 : 20.0,
              ),
              SelectDate(),
              SizedBox(
                height: width >= 600 ? 50 : 20.0,
              ),
              SartAndEndDate(),
              SizedBox(
                height: width >= 600 ? 50 : 20.0,
              ),
              const Text(
                'Description',
                style: TextStyle(color: Colors.blue, fontSize: 20),
              ),
              TextForm(
                controller: _description,
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: ElevatedButton(
                  child: const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      'Create Task',
                      style: TextStyle(color: Colors.white, fontSize: 20),
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
