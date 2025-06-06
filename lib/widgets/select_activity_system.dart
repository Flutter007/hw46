import 'package:flutter/material.dart';
import '../data/fit_test_data.dart';
import 'select_activity_line.dart';

class SelectActivitySystem extends StatelessWidget {
  final void Function(String) onSelect;
  final String? selectedActivity;

  const SelectActivitySystem({
    super.key,
    required this.onSelect,
    required this.selectedActivity,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'To see more info do long tap on the text!',
          style: TextStyle(fontSize: 16),
        ),
        ListView.builder(
          shrinkWrap: true,
          itemBuilder:
              (ctx, index) => SelectActivityLine(
                message: activitiesInfo[index],
                activity: activities[index],
                isSelected: selectedActivity == activities[index],
                onTap: onSelect,
              ),
          itemCount: activities.length,
        ),
      ],
    );
  }
}
