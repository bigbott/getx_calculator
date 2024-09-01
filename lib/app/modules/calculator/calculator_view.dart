import 'package:flutter/material.dart';

import 'package:getx_calculator/app/modules/calculator/constants.dart';
import 'package:getx_calculator/app/modules/calculator/widgets/acce.dart';
import 'package:getx_calculator/app/modules/calculator/widgets/display.dart';
import 'package:getx_calculator/app/modules/calculator/widgets/keyboard.dart';

class CalculatorView extends StatelessWidget {
  CalculatorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Display(),
            SizedBox(
              height: gap,
            ),
            Keyboard(),
            SizedBox(
              height: gap,
            ),
            AcCe(),
          ],
        ),
      ),
    );
  }
}
