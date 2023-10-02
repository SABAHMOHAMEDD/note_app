import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'custom_app_bar.dart';

import 'custom_text_field.dart';

class EditNotesViewBody extends StatelessWidget {
  const EditNotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),

      child: Column(

        children: [
          SizedBox(
            height: 10,
          ),
          CustomAppBar(title: 'Edit Notes', icon: FontAwesomeIcons.check,),
          SizedBox(
            height: 26,
          ),
          CustomTextField(hintText: 'title'),
          SizedBox(
            height: 16,
          ),

          CustomTextField(hintText: 'content',maxLines: 5,),

        ],
      ),
    );
  }
}