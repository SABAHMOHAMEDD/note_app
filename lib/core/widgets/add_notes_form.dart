import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubit/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/models/notes_model.dart';

import '../../cubit/add_note_cubit/add_note_states.dart';
import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNotesForm extends StatefulWidget {
  const AddNotesForm({super.key});

  @override
  State<AddNotesForm> createState() => _AddNotesFormState();
}

class _AddNotesFormState extends State<AddNotesForm> {
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  final GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 24,
          ),
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hintText: 'title',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            onSaved: (value) {
              subtitle = value;
            },
            hintText: 'content',
            maxLines: 5,
          ),
          const SizedBox(
            height: 55,
          ),
          BlocBuilder<AddNoteCubit, AddNoteStates>(
            builder: (context, state) {
              return CutomButton(
                isLoading: state is AddNoteLoadingState ? true : false,
                onTab: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    NotesModel notesModel = NotesModel(
                        title: title!,
                        subtitle: subtitle!,
                        date: DateTime.now().toString(),
                        color: Colors.deepPurple.value);
                    BlocProvider.of<AddNoteCubit>(context).addNote(notesModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                  }
                },
              );
            },
          ),
          const SizedBox(
            height: 32,
          ),
        ],
      ),
    );
  }
}
