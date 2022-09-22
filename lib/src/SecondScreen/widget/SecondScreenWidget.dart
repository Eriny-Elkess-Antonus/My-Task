// ignore_for_file: non_constant_identifier_names, file_names, sort_child_properties_last

import 'package:flutter/material.dart';

import 'categoryList.dart';
import 'selecetDate.dart';
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
    return Padding(
      padding: const EdgeInsets.all(20.0),
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
          const Text(
            'Task Name',
            style: TextStyle(color: Colors.blue, fontSize: 20),
          ),
          TextForm(
            controller: _Controller,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Select Category',
                style: TextStyle(color: Colors.blue, fontSize: 20),
              ),
              Text(
                'see all',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          CategoryList(),
          const Text(
            'Date',
            style: TextStyle(color: Colors.blue, fontSize: 20),
          ),
          SelectDate(),
          Row(
            children: [
              Column(
                children: [],
              ),
              Column(
                children: [],
              )
            ],
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
              onPressed: (() => print('hi')),
            ),
          )
        ],
      ),
    );
  }
}
