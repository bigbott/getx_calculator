import 'package:flutter/material.dart';
import 'package:getx_calculator/app/modules/onpressed_function.dart';
import 'package:getx_calculator/app/modules/calculator/widgets/buttons/calculator_button.dart';

class RowOfButtons extends StatelessWidget {
  final List<String> labels;
  final double width;
  final double height;

  RowOfButtons(
      {super.key,
      required this.labels,
      required this.width,
      required this.height});

  @override
  Widget build(BuildContext context) {
    double gap = 10;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        
        CalculatorButton(
          text: labels[0],
          onPressed: onpressedFunction,
          width: width,
          height: height,
        ),
        SizedBox(
          width: gap,
        ),
        CalculatorButton(
          text: labels[1],
          onPressed: onpressedFunction,
          width: width,
          height: height,
        ),
        SizedBox(
          width: gap,
        ),
        CalculatorButton(
          text: labels[2],
          onPressed: onpressedFunction,
          width: width,
          height: height,
        ),
        SizedBox(
          width: gap,
        ),
        CalculatorButton(
          text: labels[3],
          onPressed: onpressedFunction,
          width: width,
          height: height,
        ),

      ],
    );
  }
}
