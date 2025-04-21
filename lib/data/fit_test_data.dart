import 'package:flutter/material.dart';

import '../models/gender.dart';
import '../models/goal.dart';

final activities = [
  'Sedentary lifestyle',
  'Moderate lifestyle',
  'Average - activity lifestyle',
  'High - activity lifestyle',
  'Very High - activity lifestyle',
];
final activitiesInfo = [
  'Little or no physical activity',
  'Light exercise or sport 3-5 times a week',
  'Moderate exercise 6-7 times a week',
  'Intensive exercise,physical job, sport 6-7 times a week',
  'Professional athlete,every day intensive exercise',
];
final goalList = [
  Goal(
    id: 'weight_loss',
    title: 'Weight Loss',
    icon: Icons.directions_run_outlined,
  ),
  Goal(
    id: 'weight_maintenance',
    title: 'Weight Maintenance',
    icon: Icons.fitness_center_outlined,
  ),
  Goal(id: 'weight_gain', title: 'Weight Gain', icon: Icons.fastfood_rounded),
];
final genderList = [
  Gender(id: 'male', title: 'Male', icon: Icons.male),
  Gender(id: 'female', title: 'Female', icon: Icons.female),
];
