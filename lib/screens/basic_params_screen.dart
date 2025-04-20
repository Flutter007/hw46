import 'package:flutter/material.dart';
import 'package:hw46/app_routes.dart';
import 'package:hw46/models/route_arguments/fit_arguments.dart';
import 'package:hw46/widgets/custom_textfield.dart';

import '../models/gender.dart';

class BasicParamsScreen extends StatefulWidget {
  const BasicParamsScreen({super.key});

  @override
  State<BasicParamsScreen> createState() => _BasicParamsScreenState();
}

class _BasicParamsScreenState extends State<BasicParamsScreen> {
  var weightController = TextEditingController();
  var heightController = TextEditingController();
  var ageController = TextEditingController();
  String? gender;
  @override
  void dispose() {
    weightController.dispose();
    heightController.dispose();
    ageController.dispose();
    super.dispose();
  }

  void goToNext() {
    final arg = FitBaseArguments(
      gender: gender!,
      weight: double.parse(weightController.text),
      height: double.parse(heightController.text),
      age: int.parse(ageController.text),
    );
    Navigator.of(
      context,
    ).pushNamed(AppRoutes.activity, arguments: arg.calories);
    print(arg.calories);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Basic Params Enter')),
      body: Center(
        child: Column(
          children: [
            Text('Enter info in this fields !:'),
            SizedBox(height: 20),
            DropdownMenu(
              expandedInsets: EdgeInsets.all(105),
              label: Text('Select Gender'),
              onSelected: (value) {
                setState(() {
                  gender = value;
                  print(gender);
                });
              },
              dropdownMenuEntries:
                  genderList
                      .map(
                        (e) => DropdownMenuEntry(
                          value: e.id,
                          leadingIcon: Icon(e.icon),
                          label: e.title,
                        ),
                      )
                      .toList(),
            ),
            SizedBox(height: 20),
            CustomTextField(
              controller: weightController,
              labelText: 'Weight :',
              suffixText: 'kg',
            ),
            CustomTextField(
              controller: heightController,
              labelText: 'Height :',
              suffixText: 'cm',
            ),
            CustomTextField(
              controller: ageController,
              labelText: 'Age :',
              suffixText: 'years',
            ),
            SizedBox(height: 20),
            TextButton(onPressed: goToNext, child: Text('Next ➦')),
          ],
        ),
      ),
    );
  }
}
