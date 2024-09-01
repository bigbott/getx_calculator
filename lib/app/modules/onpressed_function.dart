import 'package:function_tree/function_tree.dart';
import 'package:get/get.dart';
import 'package:getx_calculator/app/modules/calculator/calculator_controller.dart';

void Function(String) onpressedFunction = (text) {
  var calculatorController = Get.find<CalculatorController>();
  var line = calculatorController.read();

  bool endsWithActionSymbol(line) {
    return line.endsWith('+') ||
        line.endsWith('-') ||
        line.endsWith('*') ||
        line.endsWith('/') ||
        line.endsWith('.');
  }

  if (text == '=') {
    if (line == '0' || endsWithActionSymbol(line)) {
        line == line; //no change
        return;
    } 
    line = line.interpret().toString();
    calculatorController.change(line);
    return;
  }
  if (line == '0') {
    if (text == '=' || text == '+' || text == '-' || text == '*' || text == '/') {
      line == '0'; //no change
    } else {
      line = text;
    }
  } else if (endsWithActionSymbol(line)) {
    if (text == '=' || text == '+' || text == '-' || text == '*' || text == '/') {
      line == line; //no change
    } else {
      line = line + text;
    }
  } else {
    line = line + text;
  }

  calculatorController.change(line);
};
