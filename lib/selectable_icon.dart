import 'package:flutter/material.dart';

class SelectableIcon extends StatelessWidget {
  const SelectableIcon({
    super.key,
    required this.isSelected,
    this.selectedIcon,
    this.unSelectedIcon,
    this.iconSize,
    this.selectedIconColor,
    this.unSelectedIconColor,
    this.selectedCircleColor,
    this.unSelectedCircleColor,
    this.circleWide,
  });

  final bool isSelected;
  final IconData? selectedIcon;
  final IconData? unSelectedIcon;
  final Color? selectedIconColor;
  final Color? unSelectedIconColor;
  final Color? selectedCircleColor;
  final Color? unSelectedCircleColor;
  final double? iconSize;
  final double? circleWide;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected
              ? selectedCircleColor ?? Colors.green
              : unSelectedCircleColor ?? Colors.grey,
          width: circleWide ?? 2.0,
        ),
      ),
      child: Icon(
        isSelected
            ? selectedIcon ?? Icons.check_circle
            : unSelectedIcon ?? Icons.circle_rounded,
        color: isSelected
            ? selectedIconColor ?? Colors.green
            : unSelectedIconColor ?? Colors.white,
        size: iconSize ?? 12.0,
      ),
    );
  }
}
