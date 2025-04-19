import 'package:flutter/material.dart';

class Gender {
  final String id;
  final String title;
  final IconData icon;

  Gender({required this.title, required this.icon, required this.id});
}

final genderList = [
  Gender(id: 'male', title: 'Male', icon: Icons.male),
  Gender(id: 'female', title: 'Female', icon: Icons.female),
];
