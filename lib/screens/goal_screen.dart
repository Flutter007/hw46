import 'package:flutter/material.dart';
import 'package:hw46/app_routes.dart';
import 'package:hw46/models/goal.dart';
import '../models/route_arguments/fit_arguments.dart';

class GoalScreen extends StatefulWidget {
  const GoalScreen({super.key});

  @override
  State<GoalScreen> createState() => _GoalScreenState();
}

class _GoalScreenState extends State<GoalScreen> {
  String? goal;
  void goToNext() {
    if (goal != null) {
      final previois =
          ModalRoute.of(context)!.settings.arguments as FitArguments;
      final updatedArgs = FitArguments(
        gender: previois.gender,
        weight: previois.weight,
        height: previois.height,
        age: previois.age,
        activity: '',
        goal: goal!,
      );
      Navigator.of(
        context,
      ).pushNamed(AppRoutes.activity, arguments: updatedArgs);
    } else {
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Goal Enter')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('What do you want to achieve?'),
            DropdownMenu(
              label: Text('Select Goal'),
              onSelected: (value) {
                setState(() {
                  goal = value;
                });
              },
              dropdownMenuEntries:
                  goalList
                      .map(
                        (e) => DropdownMenuEntry(
                          enabled: true,
                          value: e.id,
                          label: e.title,
                          leadingIcon: Icon(e.icon),
                        ),
                      )
                      .toList(),
            ),
            TextButton(onPressed: goToNext, child: Text('Next ➦')),
          ],
        ),
      ),
    );
  }
}
