import 'package:get/get.dart';

import '../modules/calculator/calculator_binding.dart';
import '../modules/calculator/calculator_view.dart';


part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.CALCULATOR;

  static final routes = [

    GetPage(
      name: _Paths.CALCULATOR,
      page: () =>  CalculatorView(),
      binding: CalculatorBinding(),
    ),
  ];
}
