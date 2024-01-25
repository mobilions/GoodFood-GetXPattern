import 'package:get/get.dart';
import 'package:good_foods/modules/verification_module/verification_controller.dart';

class VerificationCodeBinding implements Bindings {
  @override
  void dependencies() {
   Get.lazyPut(() => VerificationCodeController());
  }
}
