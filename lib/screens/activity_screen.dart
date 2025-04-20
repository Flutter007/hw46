import 'package:flutter/material.dart';
import 'package:hw46/models/route_arguments/fit_arguments.dart';
import '../widgets/select_activity_system.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  String? selectedActivity;
  void goToRes() {
    final basicArg = ModalRoute.of(context)!.settings.arguments as double;
    final calories = FitActivityArguments(
      activity: selectedActivity!,
      calories: basicArg,
    );
    Navigator.of(
      context,
    ).pushNamed('/goal', arguments: calories.caloriesActivity);
    print(calories.caloriesActivity);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Activity Enter')),
      body: Center(
        child: Column(
          children: [
            Text('Select your activity level:'),
            SelectActivitySystem(
              selectedActivity: selectedActivity,
              onSelect: (activity) {
                setState(() {
                  selectedActivity = activity;
                });
              },
            ),
            TextButton(onPressed: goToRes, child: Text('Next ➦')),
          ],
        ),
      ),
    );
  }
}
