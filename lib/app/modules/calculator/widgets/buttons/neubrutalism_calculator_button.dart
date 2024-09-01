import 'package:flutter/material.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';

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
    return NeuTextButton(
      borderRadius: BorderRadius.circular(12),
      buttonColor:Theme.of(context).colorScheme.primaryContainer,
      buttonHeight: height,
      buttonWidth: width,
      enableAnimation: true,
      borderColor: Theme.of(context).colorScheme.secondary,
      shadowColor:Theme.of(context).colorScheme.onSecondaryContainer,
      text: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold),
        ),
       onPressed: () {
              onPressed(text);
            },  
      );
  }
}
