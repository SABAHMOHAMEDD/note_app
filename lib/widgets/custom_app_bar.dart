import 'package:flutter/material.dart';

import 'custom_search_Icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Notes',
          style: TextStyle(fontSize: 24),
        ),
        Spacer(),
        CustomSearchIcon()
      ],
    );
  }
}
