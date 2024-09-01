import 'package:flutter/material.dart';
import 'package:pretty_animated_buttons/pretty_animated_buttons.dart';

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
      child: PrettyNeumorphicButton(
        padding: EdgeInsets.all(16),
        borderRadius: 5,
        duration: Duration(milliseconds: 60),
        
        label: text,
        onPressed: () {
          onPressed(text);
        },
      ),
    );
  }
}
