import 'package:flutter/material.dart';
import 'package:note_app/models/notes_model.dart';

import '../core/widgets/edit_notes_view_body.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({super.key, required this.notesModel});
  final NotesModel notesModel;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: EditNotesViewBody(
          notesModel: notesModel,
        ),
      ),
    );
  }
}
