// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';

import 'category.dart';

class CategoryProvider extends ChangeNotifier {
  final List<Category> _category = [
    Category(name: 'Development'),
    Category(name: 'Research'),
    Category(name: 'Design'),
    Category(name: 'Backend'),
  ];
  List<Category> get category {
    return [..._category];
  }
}
