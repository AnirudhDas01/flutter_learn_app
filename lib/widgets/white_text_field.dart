import 'package:flutter/material.dart';

class WhiteTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController inpController;
  final String prefixText;
  const WhiteTextField({
    super.key,
    required this.hintText,
    required this.inpController,
    required this.prefixText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Colors.white), // input text color
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.white70),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white, width: 2),
          borderRadius: BorderRadius.circular(8),
        ),
        prefixText: prefixText,
      ),
      controller: inpController,
    );
  }
}
