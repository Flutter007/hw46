import 'package:flutter/material.dart';
import 'package:hw46/app_routes.dart';
import 'package:hw46/models/goal.dart';
import '../models/route_arguments/fit_arguments.dart';

class GoalScreen extends StatefulWidget {
  const GoalScreen({super.key});

  @override
  State<GoalScreen> createState() => _GoalScreenState();
}

String? goal;

class _GoalScreenState extends State<GoalScreen> {
  void goToNext() {
    final calories = ModalRoute.of(context)!.settings.arguments as double;
    final goalArg = FitGoalArguments(goal: goal!, calories: calories);
    Navigator.of(
      context,
    ).pushNamed(AppRoutes.result, arguments: goalArg.caloriesGoal);
    print(goalArg.caloriesGoal);
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
                print(goal);
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
