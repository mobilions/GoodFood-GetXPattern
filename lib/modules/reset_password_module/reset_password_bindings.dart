import 'package:get/get.dart';
import 'package:good_foods/modules/reset_password_module/reset_password_controller.dart';

class ResetPasswordBinding implements Bindings {
  @override
  void dependencies() {
   Get.lazyPut(() => ResetPasswordController());
  }
}