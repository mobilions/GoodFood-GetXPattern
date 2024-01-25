import 'package:flutter/material.dart';
import 'package:good_foods/config/app_fonts.dart';
import 'package:good_foods/config/size_config.dart';
import 'package:good_foods/utils/colors.dart';

class CommonTextField extends StatelessWidget {
  final String? lable, hintText;
  final TextEditingController? textEditingController;
  final int? maxLines;
  final Widget? suffix;
  final bool? obscure;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final FormFieldValidator? validator;
  final VoidCallback? onTap;
  final bool? readOnly;

  const CommonTextField({
    super.key,
    this.lable,
    this.hintText,
    this.textEditingController,
    this.maxLines,
    this.textInputAction,
    this.keyboardType,
    this.suffix,
    this.obscure,
    this.validator,
    this.onTap,
    this.readOnly,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          lable ?? "",
          style: TextStyle(
              fontSize: getProportionalFontSize(16),
              fontFamily: AppFonts.font400,
              color: AppColors.textFieldLableColor),
        ),
        SizedBox(
          height: getProportionateScreenHeight(9),
        ),
        TextFormField(
          onTap: onTap,
          readOnly:readOnly ?? false,
          controller: textEditingController,
          maxLines: maxLines ?? 1,
          cursorColor: AppColors.primaryColor,
          obscureText: obscure ?? false,
          textInputAction: textInputAction,
          keyboardType: keyboardType,
          obscuringCharacter: "●",
          style: TextStyle(
            fontSize: getProportionalFontSize(17),
            fontFamily: AppFonts.font500,
          ),
          validator: validator,
          decoration: InputDecoration(
            suffixIcon: suffix,
            contentPadding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(16),
              vertical: getProportionateScreenHeight(18),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
              borderRadius: BorderRadius.circular(
                getProportionateScreenWidth(10),
              ),
            ),
            errorMaxLines: 2,
            errorStyle: TextStyle(
              height: getProportionateScreenHeight(.9),
              //overflow: TextOverflow.visible,
              fontSize: getProportionalFontSize(10),
              color: Colors.redAccent,
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.primaryColor),
              borderRadius: BorderRadius.circular(
                getProportionateScreenWidth(10),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.primaryColor),
              borderRadius: BorderRadius.circular(
                getProportionateScreenWidth(10),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.textFieldColor),
              borderRadius: BorderRadius.circular(
                getProportionateScreenWidth(10),
              ),
            ),
            hintText: hintText,
            hintStyle: TextStyle(
              color: AppColors.hintTextColor,
              fontSize: getProportionalFontSize(17),
              fontFamily: AppFonts.font400,
            ),
          ),
        ),
      ],
    );
  }
}
