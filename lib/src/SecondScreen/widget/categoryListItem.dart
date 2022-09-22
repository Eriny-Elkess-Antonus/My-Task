// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../model/category.dart';

class CategoryListItem extends StatelessWidget {
  const CategoryListItem(
      {super.key, required this.category, required this.isSelect});
  final Category category;
  final bool isSelect;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isSelect == true
            ? const Color.fromARGB(255, 30, 105, 167)
            : Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
            color: Colors.blue, style: BorderStyle.solid, width: 1.5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          category.name,
          style: const TextStyle(fontSize: 20, color: Colors.blue),
        ),
      ),
    );
  }
}
