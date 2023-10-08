import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/cubit/notes_cubit/notes_cubit.dart';
import 'package:note_app/models/notes_model.dart';
import 'custom_app_bar.dart';

import 'custom_text_field.dart';
import 'edit_item_color_listview.dart';

class EditNotesViewBody extends StatefulWidget {
  const EditNotesViewBody({super.key, required this.notesModel});
  final NotesModel notesModel;

  @override
  State<EditNotesViewBody> createState() => _EditNotesViewBodyState();
}

class _EditNotesViewBodyState extends State<EditNotesViewBody> {
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          CustomAppBar(
            onIconTap: () {
              widget.notesModel.title = title ?? widget.notesModel.title;
              widget.notesModel.subtitle =
                  subtitle ?? widget.notesModel.subtitle;
              widget.notesModel.save();
              NotesCubit.get(context).getAllNotes();
              Navigator.pop(context);
            },
            title: 'Edit Note',
            icon: FontAwesomeIcons.check,
          ),
          const SizedBox(
            height: 26,
          ),
          CustomTextField(
            initialValue: widget.notesModel.title,
            onChanged: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            initialValue: widget.notesModel.subtitle,
            onChanged: (value) {
              subtitle = value;
            },
            maxLines: 5,
          ),
          const SizedBox(
            height: 32,
          ),
          EditItemColorListView(
            notesModel: widget.notesModel,
          )
        ],
      ),
    );
  }
}
