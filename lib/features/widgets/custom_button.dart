import 'package:flutter/material.dart';
import 'package:note_app/core/constants.dart';

class CutomButton extends StatelessWidget {
  const CutomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 55,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: KprimaryColor),
      child: const Center(
        child: Text(
          'Add',
          style: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}