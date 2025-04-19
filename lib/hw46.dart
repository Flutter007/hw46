import 'package:flutter/material.dart';
import 'package:hw46/app_routes.dart';
import 'package:hw46/screens/activity_screen.dart';
import 'package:hw46/screens/basic_params_screen.dart';
import 'package:hw46/screens/start_test_screen.dart';

import 'screens/goal_screen.dart';

class Hw46 extends StatelessWidget {
  const Hw46({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AppRoutes.home,
      routes: {
        AppRoutes.home: (context) => StartTestScreen(),
        AppRoutes.basic: (context) => BasicParamsScreen(),
        AppRoutes.goal: (context) => GoalScreen(),
        AppRoutes.activity: (context) => ActivityScreen(),
        AppRoutes.result: (context) => const Placeholder(),
      },
    );
  }
}
