import 'package:get/get.dart';
import '../../routes/app_pages.dart';

class SplashController extends GetxController {

  @override
  void onInit() {

    Future.delayed(Duration(seconds: 1)).then((value) {
      Get.offAllNamed(Routes.WELCOME);
    });

    super.onInit();
  }
}
