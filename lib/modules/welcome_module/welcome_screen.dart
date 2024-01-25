import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:good_foods/config/size_config.dart';
import 'package:good_foods/modules/welcome_module/welcome_controller.dart';
import 'package:good_foods/routes/app_pages.dart';

import '../../config/app_fonts.dart';
import '../../utils/app_images.dart';
import '../../utils/colors.dart';

class WelcomeScreen extends GetView<WelcomeController> {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: GetBuilder<WelcomeController>(
        builder: (WelcomeController welcomeController) {
          return SafeArea(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    AppImages.welcomeBackground,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(30),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: getProportionateScreenHeight(26),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: GestureDetector(
                        onTap:  () {
                          Get.offAllNamed(Routes.HOME);
                        },
                        child: Container(
                          height: 32,
                          // height: getProportionateScreenHeight(32),
                          width: getProportionateScreenWidth(55),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                              getProportionateScreenWidth(27.4),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "Skip",
                              style: TextStyle(
                                color: AppColors.primaryColor,
                                fontFamily: AppFonts.font400,
                                fontSize: getProportionalFontSize(14),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(102),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Welcome to",
                        style: TextStyle(
                            fontSize: getProportionalFontSize(53),
                            fontFamily: AppFonts.font700,
                            height: getProportionateScreenHeight(1),
                            shadows: [
                              Shadow(
                                offset: Offset(0.0, 5.0), //position of shadow
                                blurRadius: 6.0, //blur intensity of shadow
                                color: Colors.black.withOpacity(0.4), //color of shadow with opacity
                              ),
                            ]),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Good Foods Restaurant",
                        style: TextStyle(
                            fontSize: getProportionalFontSize(45),
                            fontFamily: AppFonts.font700,
                            color: Color(0xFFFE724C),
                            height: getProportionateScreenHeight(1.2),
                            shadows: [
                              Shadow(
                                offset: Offset(0.0, 5.0), //position of shadow
                                blurRadius: 6.0, //blur intensity of shadow
                                color: Colors.black.withOpacity(0.4), //color of shadow with opacity
                              ),
                            ]),
                      ),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(10),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Your favourite foods delivered fast at \norder now.",
                        style: TextStyle(
                          fontSize: getProportionalFontSize(18),
                          fontFamily: AppFonts.font400,
                          color: Color(0xFF30384F),
                        ),
                      ),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: Colors.white,
                            thickness: .8,
                            endIndent: getProportionateScreenWidth(22),
                          ),
                        ),
                        Text(
                          "sign in with",
                          style: TextStyle(
                              fontSize: getProportionalFontSize(16),
                              fontFamily: AppFonts.font400,
                              color: Colors.white),
                        ),
                        Expanded(
                          child: Divider(
                            color: Colors.white,
                            thickness: .8,
                            indent: getProportionateScreenWidth(22),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(15),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                            },
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
                        ),
                        SizedBox(
                          width: getProportionateScreenWidth(35),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {},
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
                        ),
                      ],
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(23),
                    ),
                    SizedBox(
                      // height: getProportionateScreenHeight(54),
                      height: 54,
                      width: getProportionateScreenWidth(315),
                      child: ElevatedButton(
                        onPressed: () {
                          Get.toNamed(Routes.SIGNUP);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white.withOpacity(.21),foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              getProportionateScreenWidth(30),
                            ),
                          ),
                          side: const BorderSide(color: Colors.white),
                        ),
                        child: Text(
                          "Start with email or phone",
                          style: TextStyle(
                              fontSize: getProportionalFontSize(17),
                              fontFamily: AppFonts.font500,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(25),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account?",
                          style: TextStyle(
                              fontSize: getProportionalFontSize(16),
                              fontFamily: AppFonts.font400,
                              color: Colors.white),
                        ),
                        SizedBox(
                          width: getProportionateScreenWidth(2),
                        ),
                        TextButton(
                          onPressed: () {
                            Get.toNamed(Routes.SIGNIN,arguments: true);
                          },
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                                fontSize: getProportionalFontSize(16),
                                fontFamily: AppFonts.font500,
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.white,
                                height: 1,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
