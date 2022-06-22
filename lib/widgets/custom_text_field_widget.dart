import 'dart:ffi';

import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final bool obscureText;
  final String label;
  final Function(String) onChanged;
  const CustomTextFieldWidget({
    Key? key,
    this.obscureText = false,
    required this.label,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        label: Text(label),
      ),
      onChanged: onChanged,
      obscureText: obscureText,
    );
  }
}
