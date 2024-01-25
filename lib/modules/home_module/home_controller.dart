import 'package:get/get.dart';
import 'package:good_foods/libraries/advanced_drawer/flutter_advanced_drawer.dart';

class HomeController extends GetxController {

  int selectedCategory = 0;
  AdvancedDrawerController advancedDrawerController =
      AdvancedDrawerController();

  @override
  void onInit() {
    super.onInit();
  }
}