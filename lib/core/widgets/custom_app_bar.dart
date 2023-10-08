import 'package:flutter/material.dart';

import 'custom_search_Icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.title, required this.icon, this.onIconTap})
      : super(key: key);
  final String title;
  final IconData icon;
  final void Function()? onIconTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 24),
        ),
        const Spacer(),
        CustomAppBarIcon(
          onIconTap: onIconTap,
          icon: icon,
        )
      ],
    );
  }
}
