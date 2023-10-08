import 'package:flutter/material.dart';
import 'package:note_app/cubit/add_note_cubit/add_note_cubit.dart';

import '../constants.dart';
import 'color_item.dart';

class ItemColorListView extends StatefulWidget {
  const ItemColorListView({
    super.key,
  });

  @override
  State<ItemColorListView> createState() => _ItemColorListViewState();
}

class _ItemColorListViewState extends State<ItemColorListView> {
  int currentIndex = 0;

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
                AddNoteCubit.get(context).color = KcolorsList[index];
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
