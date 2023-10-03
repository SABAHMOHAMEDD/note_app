import 'package:flutter/material.dart';

import '../../views/edit_notes_view.dart';
import 'note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: 5,
          itemBuilder: (context, int index) {
            return GestureDetector(
                onTap: (){
                  
                  Navigator.push(context,MaterialPageRoute(builder: (context){
                    return const EditNotesView();
                  }));
                },
                child: const NoteItem());
          }),
    );
  }
}
