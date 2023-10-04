import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/cubit/notes_cubit/notes_cubit.dart';
import 'package:note_app/models/notes_model.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({Key? key, required this.notesModel}) : super(key: key);
  final NotesModel notesModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Container(
        padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Color(notesModel.color)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                notesModel.title,
                style: const TextStyle(fontSize: 20, color: Colors.black),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(
                  top: 16,
                ),
                child: Text(
                  notesModel.subtitle,
                  style: TextStyle(
                      fontSize: 16, color: Colors.black.withOpacity(0.4)),
                ),
              ),
              trailing: IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    notesModel.delete();
                    NotesCubit.get(context).getAllNotes();
                  },
                  icon: const Icon(
                    FontAwesomeIcons.trash,
                    size: 22,
                    color: Colors.black,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                notesModel.date,
                style: TextStyle(
                    fontSize: 14, color: Colors.black.withOpacity(0.4)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
