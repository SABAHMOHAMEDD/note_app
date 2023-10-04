import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubit/notes_cubit/notes_cubit.dart';
import 'package:note_app/cubit/notes_cubit/notes_states.dart';
import 'package:note_app/models/notes_model.dart';

import '../../views/edit_notes_view.dart';
import 'note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesStates>(
      builder: (context, states) {
        List<NotesModel> notesList = NotesCubit.get(context).notesList ?? [];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: notesList.length,
              itemBuilder: (context, int index) {
                return NoteItem(
                  notesModel: notesList[index],
                );
              }),
        );
      },
    );
  }
}
