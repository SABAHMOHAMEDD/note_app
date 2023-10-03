import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note_app/cubit/add_note_cubit/add_note_cubit.dart';

import '../../cubit/add_note_cubit/add_note_states.dart';
import 'add_notes_form.dart';

class AddNotesBottomSheet extends StatelessWidget {
  const AddNotesBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: BlocConsumer<AddNoteCubit, AddNoteStates>(
          listener: (context, state) {
            if (state is AddNoteSuccessState) {
              Navigator.pop(context);
            }
            if (state is AddNoteFailureState) {
              print(state.errorMsg);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
                inAsyncCall: false,
                child: SingleChildScrollView(
                    child: Container(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom),
                        child: const AddNotesForm())));
          },
        ),
      ),
    );
  }
}
