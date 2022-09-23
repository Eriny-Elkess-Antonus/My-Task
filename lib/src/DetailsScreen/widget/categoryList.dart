// ignore_for_file: file_names, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/categoryProvider.dart';
import 'categoryListItem.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    final categorys = context.read<CategoryProvider>();
    final category = categorys.category;
    return SizedBox(
      height: 50,
      width: 3000,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: category.length,
        itemBuilder: (context, index) {
          return CategoryListItem(
            category: category[index],
            isSelect: false,
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(width: 30);
        },
      ),
    );
  }
}
