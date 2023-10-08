import 'package:flutter/material.dart';

import '../../core/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
       this.hintText,
      this.maxLines = 1,
      this.onSaved,
      this.onChanged, this.initialValue});
  final String? hintText;
  final int maxLines;
  final void Function(String?)? onSaved;
  final void Function(String?)? onChanged;
  final String? initialValue;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "Field is required";
        } else {
          return null;
        }
      },
      initialValue:initialValue ,
      onChanged: onChanged,
      onSaved: onSaved,
      maxLines: maxLines,
      cursorColor: KprimaryColor,
      style: const TextStyle(decoration: TextDecoration.none),
      decoration: InputDecoration(
          hintText: hintText,
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
