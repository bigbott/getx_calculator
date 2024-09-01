import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_calculator/app/modules/calculator/widgets/buttons/calculator_button.dart';
import 'package:getx_calculator/app/modules/calculator/widgets/row_of_buttons_NOT%20IN%20USE.dart';

import 'calculator_controller.dart';

class CalculatorView extends GetView<CalculatorController> {
  CalculatorView({super.key});
  var labels1 = [
    '1',
    '2',
    '3',
    '+',
  ];
  var labels2 = [
    '4',
    '5',
    '6',
    '-',
  ];
  var labels3 = [
    '7',
    '8',
    '9',
    '*',
  ];
  var labels4 = [
    '0',
    '.',
    '=',
    '/',
  ];
  var buttonWidth = 50.0;
  var buttonHeight = 50.0;
  var gap = 10.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // title: const Text('Calculator'),
          // centerTitle: true,
          ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 237,
              height: 40,
              margin: const EdgeInsets.all(5.0),
              padding: const EdgeInsets.all(8.0),
              
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                border: Border.all(
                    color: Theme.of(context).colorScheme.secondary,
                    width: 1,
                    style: BorderStyle.solid),
                borderRadius: BorderRadius.all(Radius.circular(
                        7.0) //                 <--- border radius here
                    ),
              ),
              child: GetBuilder<CalculatorController>(builder: (controller) {
                return Text(
                  controller.read(),
                  style: TextStyle(fontWeight: FontWeight.normal, ),
                );
              }),
            ),
            SizedBox(
              height: gap,
            ),
            RowOfButtons(
                labels: labels1, width: buttonWidth, height: buttonHeight),
            SizedBox(
              height: gap,
            ),
            RowOfButtons(
                labels: labels2, width: buttonWidth, height: buttonHeight),
            SizedBox(
              height: gap,
            ),
            RowOfButtons(
                labels: labels3, width: buttonWidth, height: buttonHeight),
            SizedBox(
              height: gap,
            ),
            RowOfButtons(
                labels: labels4, width: buttonWidth, height: buttonHeight),
            SizedBox(
              height: gap,
            ),
            Row(
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
                      line = line.length > 1
                          ? line.substring(0, line.length - 1)
                          : '0';
                      controller.change(line);
                    },
                    width: 110,
                    height: 50),
              ],
            )
          ],
        ),
      ),
    );
  }
}
