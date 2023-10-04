import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

import '../../core/constants.dart';
import '../../models/notes_model.dart';
import 'notes_states.dart';

class NotesCubit extends Cubit<NotesStates> {
  NotesCubit() : super(NotesIntialState());

  static NotesCubit get(context) => BlocProvider.of(context);
  List<NotesModel>? notesList;
  getAllNotes() {
    var notesBox = Hive.box<NotesModel>(kNotesBox);
    notesList = notesBox.values.toList();
    emit(NotesSuccessState());
  }
}
