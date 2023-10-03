import 'package:flutter_bloc/flutter_bloc.dart';

import 'add_note_states.dart';

class AddNoteCubit extends Cubit<AddNoteStates> {
  AddNoteCubit() : super(AddNoteIntialState());

  static AddNoteCubit get(context) => BlocProvider.of(context);
}
