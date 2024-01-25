import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool passwordVisible = false;

  void changeIcon() {
    passwordVisible = !passwordVisible;
    update();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onInit() {
    if (kDebugMode) {
      emailController.text = "test@gmail.com";
      passwordController.text = "12345678@a";
    }
     update();

    super.onInit();
  }
}