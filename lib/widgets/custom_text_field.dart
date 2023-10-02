import 'package:flutter/material.dart';

import '../core/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: KprimaryColor,
      style: const TextStyle(decoration: TextDecoration.none),
      decoration: InputDecoration(
          hintText: 'title',
          hintStyle: TextStyle(),
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(KprimaryColor)),
    );
  }
}

OutlineInputBorder buildBorder([color]) {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color ?? Colors.white));
}
