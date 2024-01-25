import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:good_foods/modules/splash_module/splash_controller.dart';
import 'package:good_foods/utils/app_images.dart';
import 'package:good_foods/utils/colors.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: GetBuilder<SplashController>(
        builder: (SplashController splashController) {
          return Stack(
            children: [
              Center(
                child: Image.asset(AppImages.splashIcon),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Image.asset(AppImages.splashTopIcon),
              )
            ],
          );
        },
      ),
    );
  }
}