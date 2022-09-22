// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CustomSquareWidget extends StatelessWidget {
  const CustomSquareWidget({Key? key, this.onTap, this.num, this.txt})
      : super(key: key);

  final GestureTapCallback? onTap;
  final String? num;
  final String? txt;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: 60.0,
          height: 55.0,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 30, 105, 167),
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(
                color: Colors.black, style: BorderStyle.solid, width: 1.5),
          ),
          child: const Icon(
            Icons.add,
            color: Colors.white,
            size: 30,
          )),
    );
  }
}
