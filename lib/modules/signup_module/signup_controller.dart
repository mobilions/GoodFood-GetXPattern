import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool passwordVisible = false;
  void changeIcon() {
    passwordVisible = !passwordVisible;
    update();
  }

}