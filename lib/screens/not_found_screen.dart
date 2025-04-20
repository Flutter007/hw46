import 'package:flutter/material.dart';
import 'package:hw46/app_routes.dart';

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({super.key});

  void goBackToMenu(BuildContext context) {
    Navigator.of(
      context,
    ).popUntil((route) => route.settings.name == AppRoutes.home);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Not Found Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'No screen Found!',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            ElevatedButton(
              onPressed: () => goBackToMenu(context),
              child: Text('Return'),
            ),
          ],
        ),
      ),
    );
  }
}
