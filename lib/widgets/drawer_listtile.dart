import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:good_foods/config/app_fonts.dart';
import 'package:good_foods/config/size_config.dart';
import 'package:good_foods/utils/app_images.dart';

class DrawerListTile extends StatelessWidget {
  final String? title, imageName;
  final void Function()? onTap;
  final EdgeInsetsGeometry? iconPadding;

  const DrawerListTile({
    super.key,
    this.title,
    this.imageName,
    this.onTap, this.iconPadding,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      child: ListTile(
        dense: true,
        hoverColor: Colors.white,
        title: Text(
          title ?? "",
          style: TextStyle(
            fontSize: getProportionalFontSize(16),
            fontFamily: AppFonts.font400,
          ),
        ),
        contentPadding: EdgeInsets.only(
          bottom: getProportionateScreenHeight(8),
        ),
        leading: Padding(
          padding: iconPadding ?? EdgeInsets.zero,
          child: SvgPicture.asset(
            imageName ?? AppImages.drawerProfile,
          ),
        ),
        onTap: onTap,
      ),
    );
  }
}
