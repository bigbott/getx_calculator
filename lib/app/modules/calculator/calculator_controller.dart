import 'package:get/get.dart';

class CalculatorController extends GetxController {
  var line  =  '0';
  
  void change(val){
      line = val;
      update();
  }

  String read() {
    return line;
  }
}
