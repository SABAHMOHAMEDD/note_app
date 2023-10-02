import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/add_notes_bottom_sheet.dart';
import '../widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child:  Scaffold(
        floatingActionButton: FloatingActionButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16)
          ),
          backgroundColor:Colors.cyan.shade300,
          onPressed: (){

            showModalBottomSheet(context: context, builder: (context){

              return const AddNotesBottomSheet();
            });

          },child: const Icon(FontAwesomeIcons.add,color: Colors.black,),),
        body:const NotesViewBody(),
      ),
    );
  }
}

