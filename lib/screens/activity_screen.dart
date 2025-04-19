import 'package:flutter/material.dart';
import '../widgets/select_activity_system.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  String? selectedActivity;

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
          ],
        ),
      ),
    );
  }
}
