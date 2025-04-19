import 'package:flutter/material.dart';

class SelectActivityLine extends StatelessWidget {
  final String activity;
  final String message;
  final void Function(String) onTap;
  final bool isSelected;

  const SelectActivityLine({
    super.key,
    required this.activity,
    required this.onTap,
    required this.isSelected,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () => onTap(activity),
          icon: Icon(
            isSelected ? Icons.check_box : Icons.check_box_outline_blank,
          ),
        ),
        Tooltip(message: message, child: Text(activity)),
      ],
    );
  }
}
