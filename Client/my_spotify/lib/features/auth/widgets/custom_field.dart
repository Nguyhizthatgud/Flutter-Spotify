import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  final String hintText;
  final String labelText;
  final TextEditingController controller;
  final bool isObscureText;
  const CustomField(
      {super.key,
      required this.hintText,
      required this.labelText,
      required this.controller,
      this.isObscureText = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isObscureText,
      obscuringCharacter: '+',
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        hintStyle: TextStyle(
          color: const Color.fromARGB(255, 197, 194, 194).withOpacity(0.5),
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}
