import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:good_foods/libraries/otp_field/pinput.dart';
import 'package:good_foods/modules/verification_module/verification_controller.dart';
import 'package:good_foods/utils/colors.dart';
import '../../config/app_fonts.dart';
import '../../config/size_config.dart';
import '../../routes/app_pages.dart';
import '../../utils/app_images.dart';
import '../../widgets/common_button.dart';

class VerificationCodeScreen extends GetView<VerificationCodeController> {
  const VerificationCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: GetBuilder<VerificationCodeController>(
        builder: (VerificationCodeController verificationCodeController) {
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
                          "Verification Code",
                          style: TextStyle(
                            fontSize: getProportionalFontSize(36),
                            fontFamily: AppFonts.font500,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Please type the verification code sent to",
                          style: TextStyle(
                              fontSize: getProportionalFontSize(14),
                              fontFamily: AppFonts.font400,
                              color: Color(0xFF9796A1)),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "prelookstudio@gmail.com",
                          style: TextStyle(
                              fontSize: getProportionalFontSize(14),
                              fontFamily: AppFonts.font400,
                              color: Color(0xFF9796A1)),
                        ),
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(31),
                      ),
                      Pinput(
                        defaultPinTheme: PinTheme(
                          // height: getProportionateScreenHeight(65),
                          height: 65,
                          width: getProportionateScreenWidth(65),
                          textStyle: TextStyle(
                            fontSize: getProportionalFontSize(27),
                            fontFamily: AppFonts.font500,
                            color: AppColors.primaryColor,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFFEEEEEE),
                            ),
                            borderRadius: BorderRadius.circular(
                              getProportionateScreenWidth(14),
                            ),
                          ),
                        ),
                        focusedPinTheme: PinTheme(
                          // height: getProportionateScreenHeight(65),
                          height: 65,
                          width: getProportionateScreenWidth(65),
                          textStyle: TextStyle(
                            fontSize: getProportionalFontSize(27),
                            fontFamily: AppFonts.font500,
                            color: AppColors.primaryColor,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: AppColors.primaryColor,
                            ),
                            borderRadius: BorderRadius.circular(
                              getProportionateScreenWidth(14),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(31),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "I don’t recevie a code! ",
                            style: TextStyle(
                              color: Color(0xFF5B5B5E),
                              fontFamily: AppFonts.font500,
                              fontSize: getProportionalFontSize(16),
                            ),
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                                alignment: Alignment.centerLeft,
                                foregroundColor: Colors.white),
                            onPressed: () {

                            },
                            child: Text(
                              "Please resend",
                              style: TextStyle(
                                color: AppColors.primaryColor,
                                fontFamily: AppFonts.font500,
                                fontSize: getProportionalFontSize(16),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(31),
                      ),
                      PrimaryButton(
                        text: "VERIFY",
                        onPressed: () {
                          Get.toNamed(Routes.HOME);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}