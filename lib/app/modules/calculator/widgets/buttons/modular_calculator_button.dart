import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:modular_ui/modular_ui.dart';

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
      child: MUIGradientButton(
        text: text,
        textColor: Theme.of(context).colorScheme.primary,
        animationDuration: 200,
        hapticsEnabled: false,
        onPressed: () {
              onPressed(text);
            },
        bgGradient:  LinearGradient(
          colors: [Theme.of(context).colorScheme.primaryContainer, Theme.of(context).colorScheme.surface],
          stops: [0.25, 0.75],
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
        ),
        boxShadows: [
        BoxShadow(
          color: const Color.fromARGB(255, 0, 15, 110).withOpacity(1),
          offset: const Offset(-2, -1),
          blurRadius: 1,
          spreadRadius: -1,
        ),
      ],
      ),
    );
  }
}
