import 'package:flutter/material.dart';
import 'package:hw46/widgets/image_container.dart';
import 'package:hw46/widgets/title_text.dart';
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ImageContainer(image: 'assets/images/meal.jpg', height: 220),
            Card(
              child: TitleText(
                title:
                    'Your daily calories norma is :\n ${calories.finalCalories.round()} kcal / per day ',
              ),
            ),
            ElevatedButton(
              onPressed: () => getBack(context),
              child: Text('Go back !'),
            ),
          ],
        ),
      ),
    );
  }
}
