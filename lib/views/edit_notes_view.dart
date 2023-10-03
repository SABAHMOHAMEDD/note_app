import 'package:flutter/material.dart';

import '../core/widgets/edit_notes_view_body.dart';


class EditNotesView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: EditNotesViewBody(),
      ),
    );
  }
}
