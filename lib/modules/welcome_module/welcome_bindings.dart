import 'package:get/get.dart';
import 'package:good_foods/modules/welcome_module/welcome_controller.dart';

class WelcomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WelcomeController());
  }
}
