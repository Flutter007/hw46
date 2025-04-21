import 'package:flutter/material.dart';
import 'package:hw46/app_routes.dart';
import 'package:hw46/screens/activity_screen.dart';
import 'package:hw46/screens/basic_params_screen.dart';
import 'package:hw46/screens/not_found_screen.dart';
import 'package:hw46/screens/result_screen.dart';
import 'package:hw46/screens/start_test_screen.dart';
import 'package:hw46/theme/light_theme.dart';

import 'screens/goal_screen.dart';

class Hw46 extends StatelessWidget {
  const Hw46({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      initialRoute: AppRoutes.home,
      routes: {
        AppRoutes.home: (context) => StartTestScreen(),
        AppRoutes.basic: (context) => BasicParamsScreen(),
        AppRoutes.goal: (context) => GoalScreen(),
        AppRoutes.activity: (context) => ActivityScreen(),
        AppRoutes.result: (context) => ResultScreen(),
      },
      onUnknownRoute:
          (setting) => MaterialPageRoute(builder: (ctx) => NotFoundScreen()),
    );
  }
}
