import 'package:flutter/material.dart';
import 'package:hw46/widgets/image_container.dart';

import '../app_routes.dart';
import '../models/route_arguments/fit_arguments.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

void getBack(BuildContext context) {
  Navigator.of(context).pushNamedAndRemoveUntil(AppRoutes.basic, (r) => false);
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    final calories = ModalRoute.of(context)!.settings.arguments as FitArguments;
    return Scaffold(
      appBar: AppBar(title: Text('Results for you')),
      body: Center(
        child: Column(
          children: [
            ImageContainer(image: 'assets/images/meal.jpg', height: 120),
            Card(
              child: Text(
                'Your calories norm : ${calories.finalCalories.round()}/per day ',
              ),
            ),
            TextButton(
              onPressed: () => getBack(context),
              child: Text('Go back !'),
            ),
          ],
        ),
      ),
    );
  }
}
