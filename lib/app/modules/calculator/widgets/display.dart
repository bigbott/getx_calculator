import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_calculator/app/modules/calculator/calculator_controller.dart';

class Display extends StatelessWidget {
  const Display({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      height: 45,
      margin: const EdgeInsets.all(5.0),
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        border: Border.all(
            color: Theme.of(context).colorScheme.secondary,
            width: 1,
            style: BorderStyle.solid),
        borderRadius: BorderRadius.all(
            Radius.circular(7.0) //                 <--- border radius here
            ),
      ),
      child: GetBuilder<CalculatorController>(builder: (controller) {
        return Text(
          controller.read(),
          style: TextStyle(
            fontWeight: FontWeight.normal,
          ),
        );
      }),
    );
  }
}
