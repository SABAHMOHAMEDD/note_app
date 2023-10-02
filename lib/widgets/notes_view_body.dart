import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // common horizontal padding are 8,16,24
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          CustomAppBar(),
          Expanded(child: NotesListView())
        ],
      ),
    );
  }
}
