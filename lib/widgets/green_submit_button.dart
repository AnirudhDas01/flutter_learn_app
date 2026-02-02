import 'package:flutter/material.dart';

class GreenSubmitButton extends StatelessWidget {
  final VoidCallback calculateBmi;
  final String displayText;
  const GreenSubmitButton({
    super.key,
    required this.calculateBmi,
    required this.displayText,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 65, 143, 66),
        foregroundColor: Colors.white,
        textStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
      ),
      onPressed: calculateBmi,
      child: Text(displayText),
    );
  }
}
