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
    final flatButtonStyle = TextButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
        ),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer);

    return SizedBox(
        width: width,
        height: height,
        child: TextButton(
            onPressed: () {
              onPressed(text);
            },
            style: flatButtonStyle,
            child: Text(
              text,
            )));
  }
}
