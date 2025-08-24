import 'package:get/get.dart';
import 'package:my_getx_app/app/modules/advanced/controllers/advanced_controller.dart';

class EmiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EmiController>(() => EmiController());
  }
}
