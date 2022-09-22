// ignore_for_file: file_names

import 'package:flutter/material.dart';

@immutable
class CustomTextForm extends StatelessWidget {
  CustomTextForm(
      {Key? key, required this.controller, this.isIcon = false, this.onPress})
      : super(key: key);
  final TextEditingController controller;

  bool? isIcon;
  GestureTapCallback? onPress;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // cursorColor:smokyMint ,
      controller: controller,

      decoration: InputDecoration(
          suffixIcon: isIcon!
              ? GestureDetector(
                  onTap: onPress,
                  child: const Icon(
                    Icons.keyboard_arrow_down_outlined,
                    size: 25,
                    color: Colors.blueGrey,
                  ))
              : null),
    );
  }
}
