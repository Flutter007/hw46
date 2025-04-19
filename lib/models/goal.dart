import 'package:flutter/material.dart';

class Goal {
  final String id;
  final String title;
  final IconData icon;

  Goal({required this.id, required this.title, required this.icon});
}

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
