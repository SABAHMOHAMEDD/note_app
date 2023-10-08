import 'package:flutter/material.dart';
import 'package:note_app/models/notes_model.dart';

import '../../cubit/add_note_cubit/add_note_cubit.dart';
import '../constants.dart';
import 'color_item.dart';

class EditItemColorListView extends StatefulWidget {
  const EditItemColorListView({
    super.key,
    required this.notesModel,
  });
  final NotesModel notesModel;

  @override
  State<EditItemColorListView> createState() => _ItemColorListViewState();
}

class _ItemColorListViewState extends State<EditItemColorListView> {
  int currentIndex = 0;
  @override
  void initState() {
    currentIndex=KcolorsList.indexOf(Color(widget.notesModel.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: KcolorsList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                currentIndex = index;

                widget.notesModel.color = KcolorsList[index].value;
                setState(() {});
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: ColorItem(
                  isActive: currentIndex == index,
                  color: KcolorsList[index],
                ),
              ),
            );
          }),
    );
  }
}
