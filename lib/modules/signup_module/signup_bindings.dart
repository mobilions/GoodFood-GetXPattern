import 'package:get/get.dart';
import 'package:good_foods/modules/signup_module/signup_controller.dart';

class SignUpBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpController());
  }
}
