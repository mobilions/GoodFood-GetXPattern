import 'package:flutter/material.dart';
import 'package:good_foods/config/app_fonts.dart';
import 'package:good_foods/config/size_config.dart';
import 'package:good_foods/utils/colors.dart';

class PrimaryButton extends StatelessWidget {
  final void Function()? onPressed;
  final double? height, width;
  final String? text;

  const PrimaryButton({
    super.key,
    this.onPressed,
    this.height,
    this.width,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? getProportionateScreenHeight(60),
      width: width ?? getProportionateScreenWidth(248),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(AppColors.primaryColor),
          elevation: MaterialStatePropertyAll(8)
        ),
        child: Text(
          text ?? "",
          style: TextStyle(
            fontSize: getProportionalFontSize(15),
            fontFamily: AppFonts.font500,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
