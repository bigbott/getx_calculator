import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

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
    return SizedBox(
      width: width,
      height: height,
      child: OutlineGradientButton(
        gradient: LinearGradient(
          // stops: [0, 0.5, 0.5, 1],
          colors: [Colors.green, Colors.green, Colors.red, Colors.red],
        ),
        strokeWidth: 2,
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        corners: Corners(
            topLeft: Radius.elliptical(16, 14),
            bottomRight: Radius.circular(6)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(text),
        ),
        onTap: () {
          onPressed(text);
        },
      ),
    );
  }
}
