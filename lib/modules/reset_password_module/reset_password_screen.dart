import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:good_foods/modules/reset_password_module/reset_password_controller.dart';
import 'package:good_foods/widgets/common_button.dart';
import 'package:good_foods/widgets/common_text_field.dart';

import '../../config/app_fonts.dart';
import '../../config/size_config.dart';
import '../../utils/app_images.dart';
import '../../utils/validator.dart';

class ResetPasswordScreen extends GetView<ResetPasswordController> {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: GetBuilder<ResetPasswordController>(
        builder: (ResetPasswordController resetPasswordController) {
          return SafeArea(
            child: Form(
              key: controller.formKey,
              child: Column(
                children: [
                  Stack(
                    children: [
                      Image.asset(AppImages.topLeftCircle),
                      Image.asset(AppImages.topLeftBigCircle),
                      Align(
                        alignment: Alignment.topRight,
                        child: Image.asset(AppImages.topRightCircle),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: getProportionateScreenWidth(10),
                          top: getProportionateScreenHeight(27),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: Image.asset(
                            AppImages.topBackIcon,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(50),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(26),
                    ),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Reset Password",
                            style: TextStyle(
                              fontSize: getProportionalFontSize(36),
                              fontFamily: AppFonts.font500,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Please enter your email address to request \na password reset",
                            style: TextStyle(
                                fontSize: getProportionalFontSize(14),
                                fontFamily: AppFonts.font400,
                                color: Color(0xFF9796A1)),
                          ),
                        ),
                        CommonTextField(
                          hintText: "Your email",
                          textEditingController: controller.emailController,
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.done,
                          validator: (value) => Validation.emailValidation(
                              value, "Email", context),
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(51),
                        ),
                        PrimaryButton(
                          onPressed: () {
                            if (controller.formKey.currentState!.validate()) {}
                          },
                          text: "Send new password",
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
