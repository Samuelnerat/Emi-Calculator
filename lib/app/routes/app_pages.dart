import 'package:get/get.dart';
import 'package:my_getx_app/app/modules/advanced/views/advanced_view.dart';
import 'package:my_getx_app/app/modules/basic/views/basic_view.dart';
import 'package:my_getx_app/app/modules/home/views/home_view.dart';

part 'app_routes.dart';


class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.home, page: () => HomeScreen()),

    GetPage(name: AppRoutes.basic, page: () => BasicScreen()),
    GetPage(name: AppRoutes.advanced, page: () => EmiCalculatorScreen()),
  ];
}
