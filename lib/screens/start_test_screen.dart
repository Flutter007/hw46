import 'package:flutter/material.dart';
import 'package:hw46/app_routes.dart';

class StartTestScreen extends StatelessWidget {
  const StartTestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void goToNextForm() {
      Navigator.of(context).pushNamed(AppRoutes.basic);
    }

    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: Text('Start Your Test')),
      body: Center(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage('assets/images/photo.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              'Этот тест поможет как опытным спортсменам , там и начинающим людями,желающим познать мир Правильного питания!',
              style: theme.textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
            ElevatedButton(onPressed: goToNextForm, child: Text('Start Test!')),
          ],
        ),
      ),
    );
  }
}
