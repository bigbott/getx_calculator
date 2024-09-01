import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

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
      child: GFButton(
        onPressed: () {
          onPressed(text);
        },
        text: text,
       // shape: GFButtonShape.square,
       //type: GFButtonType.outline,
       color: Theme.of(context).colorScheme.primaryContainer,
       textColor: Theme.of(context).colorScheme.primary,
       hoverColor: Theme.of(context).colorScheme.surface,
       elevation: 4,
       animationDuration: Duration(milliseconds: 50),

      ),
    );
  }
}
