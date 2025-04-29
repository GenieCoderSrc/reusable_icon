import 'package:flutter/material.dart';

import 'app_icon.dart';


class AppIconBtn extends StatelessWidget {
  const AppIconBtn(
      {super.key, required this.onPressed, this.tooltipTxt, this.icon});

  final VoidCallback onPressed;
  final String? tooltipTxt;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: const EdgeInsets.only(left: -5),
      icon: CircleAvatar(child: AppIcon(icon ?? Icons.add)),
      tooltip: tooltipTxt ?? 'Create',
      onPressed: onPressed,
    );
  }
}
