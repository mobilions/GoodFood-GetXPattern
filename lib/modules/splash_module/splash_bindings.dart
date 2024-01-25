import 'package:get/get.dart';
import 'package:good_foods/modules/splash_module/splash_controller.dart';

class SplashBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
  }
}
