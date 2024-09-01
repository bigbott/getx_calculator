import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:getx_calculator/app/modules/calculator/calculator_controller.dart';
import 'package:getx_calculator/app/modules/calculator/constants.dart';
import 'package:getx_calculator/app/modules/calculator/widgets/buttons/calculator_button.dart';

class AcCe extends GetView<CalculatorController> {
  const AcCe({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CalculatorButton(
            text: 'AC',
            onPressed: (val) => controller.change('0'),
            width: 110,
            height: 50),
        SizedBox(
          width: gap,
        ),
        CalculatorButton(
            text: 'CE',
            onPressed: (val) {
              var line = controller.read();
              line = line.length > 1 ? line.substring(0, line.length - 1) : '0';
              controller.change(line);
            },
            width: 110,
            height: 50),
      ],
    );
  }
}
