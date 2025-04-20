import 'package:flutter/material.dart';
import 'package:hw46/app_routes.dart';
import 'package:hw46/widgets/image_container.dart';

class StartTestScreen extends StatelessWidget {
  const StartTestScreen({super.key});

  void goToNextForm(BuildContext context) {
    Navigator.of(context).pushNamed(AppRoutes.basic);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: Text('Start Your Test')),
      body: Center(
        child: Column(
          children: [
            ImageContainer(image: 'assets/images/photo.png'),
            Text(
              '"This test will be helpful for both experienced athletes and beginners who wish to explore the world of proper nutrition!"',
              style: theme.textTheme.titleMedium,
              textAlign: TextAlign.left,
            ),
            ElevatedButton(
              onPressed: () => goToNextForm(context),
              child: Text('Start Test!'),
            ),
          ],
        ),
      ),
    );
  }
}
