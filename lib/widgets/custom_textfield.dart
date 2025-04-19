import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String suffixText;
  const CustomTextField({
    super.key,
    required this.controller,
    required this.labelText,
    required this.suffixText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 100,
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.numberWithOptions(decimal: true),
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: labelText,
          suffixText: suffixText,
        ),
      ),
    );
  }
}
