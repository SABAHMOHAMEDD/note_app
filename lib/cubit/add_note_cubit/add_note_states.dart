abstract class AddNoteStates {}

class AddNoteIntialState extends AddNoteStates {}

class AddNoteLoadingState extends AddNoteStates {}

class AddNoteSuccessState extends AddNoteStates {}

class AddNoteFailureState extends AddNoteStates {

  final String errorMsg;
  AddNoteFailureState(this.errorMsg);
}



