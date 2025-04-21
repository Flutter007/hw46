import 'package:flutter/material.dart';
import 'package:hw46/app_routes.dart';
import 'package:hw46/widgets/title_text.dart';
import '../data/fit_test_data.dart';
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
      final previous =
          ModalRoute.of(context)!.settings.arguments as FitArguments;
      final updatedArgs = FitArguments(
        gender: previous.gender,
        weight: previous.weight,
        height: previous.height,
        age: previous.age,
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TitleText(title: 'What do you want to achieve?'),
            SizedBox(height: 20),
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
            SizedBox(height: 20),
            ElevatedButton(onPressed: goToNext, child: Text('Next ➦')),
          ],
        ),
      ),
    );
  }
}
