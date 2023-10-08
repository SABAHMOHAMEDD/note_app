import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/models/notes_model.dart';
import 'package:hive_flutter/adapters.dart';

import '../../core/constants.dart';
import 'add_note_states.dart';

class AddNoteCubit extends Cubit<AddNoteStates> {
  AddNoteCubit() : super(AddNoteIntialState());

  static AddNoteCubit get(context) => BlocProvider.of(context);

  Color color = const Color(0xFFF2E2BA);
  addNote(NotesModel notesModel) async {
    notesModel.color = color.value;
    emit(AddNoteLoadingState());

    try {
      var notesBox = Hive.box<NotesModel>(kNotesBox);
      await notesBox.add(notesModel);
      emit(AddNoteSuccessState());
    } catch (error) {
      emit(AddNoteFailureState(error.toString()));
      if (kDebugMode) {
        print("error is :${error.toString()}");
      }
    }
  }
}
