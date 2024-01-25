import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:good_foods/modules/signup_module/signup_controller.dart';
import 'package:good_foods/routes/app_pages.dart';
import '../../config/app_fonts.dart';
import '../../config/size_config.dart';
import '../../utils/app_images.dart';
import '../../utils/colors.dart';
import '../../utils/validator.dart';
import '../../widgets/common_button.dart';
import '../../widgets/common_text_field.dart';

class SignUpScreen extends GetView<SignUpController> {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<SignUpController>(
        builder: (SignUpController signUpController) {
          return SafeArea(
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
                          child: Image.asset(AppImages.topBackIcon,)),
                    ),
                  ],
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(26),
                        ),
                        child: Form(
                          key: controller.formKey,
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Sign Up",
                                  style: TextStyle(
                                    fontSize: getProportionalFontSize(36),
                                    fontFamily: AppFonts.font500,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: getProportionateScreenHeight(21),
                              ),
                              CommonTextField(
                                lable: "Full name",
                                hintText: "Your full name",
                                textEditingController: controller.nameController,
                                textInputAction: TextInputAction.next,
                                validator: (value) => Validation.textValidation(
                                    value, "Full name"),
                              ),
                              SizedBox(
                                height: getProportionateScreenHeight(19),
                              ),
                              CommonTextField(
                                lable: "E-mail",
                                hintText: "Your email",
                                textEditingController: controller.emailController,
                                keyboardType: TextInputType.emailAddress,
                                textInputAction: TextInputAction.next,
                                validator: (value) => Validation.emailValidation(
                                    value, "Email", context),
                              ),
                              SizedBox(
                                height: getProportionateScreenHeight(19),
                              ),
                              CommonTextField(
                                lable: "Password",
                                hintText: "Password",
                                obscure: controller.passwordVisible,
                                textEditingController: controller.passwordController,
                                textInputAction: TextInputAction.next,
                                keyboardType: TextInputType.visiblePassword,
                                validator: (value) => Validation.passwordValidation(
                                    value, "Password"),
                                suffix: IconButton(
                                  color: Color(0xFFD0D2D1),
                                  onPressed: () {
                                    controller.changeIcon();
                                  },
                                  icon: controller.passwordVisible
                                      ? Icon(Icons.visibility)
                                      : Icon(Icons.visibility_off),
                                ),
                              ),
                              SizedBox(
                                height: getProportionateScreenHeight(23),
                              ),
                              PrimaryButton(
                                text: "SIGN UP",
                                onPressed: () {
                                  Get.toNamed(Routes.VERIFICATION);
                                },
                              ),
                              SizedBox(
                                height: getProportionateScreenHeight(10),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Already have an account? ",
                                    style: TextStyle(
                                      color: Color(0xFF5B5B5E),
                                      fontFamily: AppFonts.font500,
                                      fontSize: getProportionalFontSize(14),
                                    ),
                                  ),
                                  TextButton(
                                    style: TextButton.styleFrom(
                                        padding: EdgeInsets.zero,
                                        alignment: Alignment.centerLeft,
                                        foregroundColor: Colors.white),
                                    onPressed: () {
                                      if (Get.arguments == true) {
                                        Get.back();
                                      } else {
                                        Get.toNamed(Routes.SIGNIN);
                                      }
                                    },
                                    child: Text(
                                      "Sign In",
                                      style: TextStyle(
                                        color: AppColors.primaryColor,
                                        fontFamily: AppFonts.font500,
                                        fontSize: getProportionalFontSize(14),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: getProportionateScreenHeight(25),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Divider(
                                      color: Color(0xFFB3B3B3).withOpacity(0.50),
                                      thickness: .8,
                                      endIndent: getProportionateScreenWidth(22),
                                    ),
                                  ),
                                  Text(
                                    "sign in with",
                                    style: TextStyle(
                                      fontSize: getProportionalFontSize(16),
                                      fontFamily: AppFonts.font400,
                                      color: Color(0xFF5B5B5E),
                                    ),
                                  ),
                                  Expanded(
                                    child: Divider(
                                      color: Color(0xFFB3B3B3).withOpacity(0.50),
                                      thickness: .8,
                                      indent: getProportionateScreenWidth(22),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: getProportionateScreenHeight(13),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      width: getProportionateScreenWidth(139),
                                      padding: EdgeInsets.only(
                                        top: getProportionateScreenHeight(13),
                                        bottom: getProportionateScreenHeight(13),
                                        left: getProportionateScreenWidth(12),
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(
                                          getProportionateScreenWidth(27.4),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.black38,
                                              blurRadius: 2,
                                              offset: Offset(0.0, 2.0))
                                        ],
                                      ),
                                      child: Row(
                                        children: [
                                          Image.asset(AppImages.facebook),
                                          SizedBox(
                                            width: getProportionateScreenWidth(10),
                                          ),
                                          Text(
                                            "FACEBOOK",
                                            style: TextStyle(
                                                fontSize: getProportionalFontSize(13),
                                                fontFamily: AppFonts.font500),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: getProportionateScreenWidth(35),
                                  ),
                                  Expanded(
                                    child: Container(
                                      width: getProportionateScreenWidth(139),
                                      padding: EdgeInsets.only(
                                        top: getProportionateScreenHeight(13),
                                        bottom: getProportionateScreenHeight(13),
                                        left: getProportionateScreenWidth(12),
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(
                                          getProportionateScreenWidth(27.4),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.black38,
                                              blurRadius: 2,
                                              offset: Offset(0.0, 2.0))
                                        ],
                                      ),
                                      child: Row(
                                        children: [
                                          Image.asset(AppImages.google),
                                          SizedBox(
                                            width: getProportionateScreenWidth(10),
                                          ),
                                          Text(
                                            "GOOGLE",
                                            style: TextStyle(
                                                fontSize: getProportionalFontSize(13),
                                                fontFamily: AppFonts.font500),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: getProportionateScreenHeight(10),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}