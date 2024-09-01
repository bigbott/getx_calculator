import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_calculator/app/modules/calculator/calculator_controller.dart';
import 'package:getx_calculator/app/modules/calculator/constants.dart';
import 'package:getx_calculator/app/modules/calculator/widgets/buttons/calculator_button.dart';
import 'package:getx_calculator/app/modules/onpressed_function.dart';

class Keyboard extends GetView<CalculatorController> {
  const Keyboard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 230,
      height: 230,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, crossAxisSpacing: 9, mainAxisSpacing: 9),
        padding: EdgeInsets.all(1),
        shrinkWrap: true,
        itemCount: labels.length,
        itemBuilder: (context, index) {
          return CalculatorButton(
            text: labels[index],
            onPressed: onpressedFunction,
            width: buttonWidth,
            height: buttonHeight,
          );
        },
      ),
    );
  }
}
