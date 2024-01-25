import 'package:get/get.dart';
import 'package:good_foods/modules/signIn_module/signIn_controller.dart';

class SignInBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignInController());
  }
}
