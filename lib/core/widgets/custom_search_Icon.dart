import 'package:flutter/material.dart';

class CustomAppBarIcon extends StatelessWidget {
  const CustomAppBarIcon({Key? key, required this.icon, this.onIconTap})
      : super(key: key);
  final IconData icon;
  final void Function()? onIconTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onIconTap,
      child: Container(
        width: 46,
        height: 46,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white.withOpacity(0.05)),
        child: Center(
          child: Icon(icon),
        ),
      ),
    );
  }
}
