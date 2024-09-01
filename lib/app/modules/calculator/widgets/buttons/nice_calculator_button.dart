import 'package:flutter/material.dart';
import 'package:nice_buttons/nice_buttons.dart';

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
        child: NiceButtons(
          stretch: true,
          gradientOrientation: GradientOrientation.Horizontal,
          onTap: (_) {
            onPressed(text);
          },
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ));
  }
}
