import 'package:button_animations/button_animations.dart';
import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final void Function(String) onPressed;
  final double width;
  final double height;

  const CalculatorButton({
    required this.text,
    required this.onPressed,
    required this.width,
    required this.height,
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return AnimatedButton(
      width: width,
      height: height,
      onTap: () {
        onPressed(text);
      },
      isMultiColor: true,
      colors: [
        Colors.red.shade100,
        Colors.blue.shade200,
      ],
      child: Text(text),
    );
  }
}
