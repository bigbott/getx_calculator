import 'package:flutter/material.dart';
import 'package:nes_ui/nes_ui.dart';

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
        child: NesButton(
            onPressed: () {
              onPressed(text);
            },
            type: NesButtonType.normal,
            child: Text(
              text,
            )));
  }
}
