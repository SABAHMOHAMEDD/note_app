
import 'package:flutter/material.dart';

import 'custom_text_field.dart';

class AddNotesBottomSheet extends StatelessWidget {
  const AddNotesBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 24,),
          CustomTextField(),
        ],
      ),
    );
  }
}

