import 'package:flutter/material.dart';
import 'package:neumorphic_button/neumorphic_button.dart';

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
      child: NeumorphicButton(
        onTap: () {onPressed(text);},
        child: Text(text),
        borderRadius: 5,
        bottomRightShadowBlurRadius: 5,
        bottomRightShadowSpreadRadius: 1,
        borderWidth: 5,
        backgroundColor: Colors.grey.shade300,
        topLeftShadowBlurRadius: 5,
        topLeftShadowSpreadRadius: 1,
        topLeftShadowColor: Colors.white,
        bottomRightShadowColor: Colors.grey.shade500,
        height:height,
        width: width,
        padding: EdgeInsets.all(5),
        bottomRightOffset: Offset(4, 4),
        topLeftOffset: Offset(-4, -4),
        
      ),
    );
  }
}
