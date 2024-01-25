import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:good_foods/config/app_fonts.dart';
import 'package:good_foods/config/size_config.dart';
import 'package:good_foods/modules/home_module/home_controller.dart';
import 'package:good_foods/routes/app_pages.dart';
import 'package:good_foods/utils/app_images.dart';
import 'package:good_foods/utils/colors.dart';
import 'package:good_foods/utils/utils.dart';
import 'package:good_foods/widgets/drawer_listtile.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.only(
                  left: getProportionateScreenWidth(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: getProportionateScreenHeight(20),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: getProportionateScreenHeight(90),
                            width: getProportionateScreenWidth(90),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 40,
                                    color: Color(0xFFFFC529).withOpacity(0.25),
                                    offset: Offset(0.0, 8.0),
                                    spreadRadius: 0)
                              ],
                              image: DecorationImage(
                                image: AssetImage(AppImages.profile),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(10),
                          ),
                          Text(
                            "Mobilions dev",
                            style: TextStyle(
                              fontFamily: AppFonts.font500,
                              fontSize: getProportionalFontSize(20),
                            ),
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(5),
                          ),
                          Text(
                            "test@gmail.com",
                            style: TextStyle(
                              fontFamily: AppFonts.font400,
                              fontSize: getProportionalFontSize(14),
                              color: Color(0xFF9EA1B1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(20),
                    ),
                    DrawerListTile(
                      title: "My Orders",
                      onTap: () {},
                      imageName: AppImages.drawerOrders,
                    ),
                    DrawerListTile(
                      title: "Favourites",
                      onTap: () {},
                      imageName: AppImages.drawerFavourites,
                    ),
                    DrawerListTile(
                      title: "My Profile",
                      onTap: () {},
                      imageName: AppImages.drawerProfile,
                    ),
                    DrawerListTile(
                      title: "Delivery Address",
                      onTap: () {},
                      imageName: AppImages.drawerAddress,
                    ),
                    // DrawerListTile(
                    //   title: "Payment Methods",
                    //   onTap: () {},
                    //   imageName: AppImages.drawerPayment,
                    // ),
                    DrawerListTile(
                      title: "Contact Us",
                      onTap: () {},
                      imageName: AppImages.drawerContactUs,
                    ),
                    DrawerListTile(
                      title: "Settings",
                      onTap: () {},
                      imageName: AppImages.drawerSetting,
                    ),
                    DrawerListTile(
                      title: "Helps & FAQs",
                      onTap: () {},
                      imageName: AppImages.drawerHelp,
                      iconPadding: EdgeInsets.only(
                        left: getProportionateScreenWidth(2),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 43,
              width: 117,
              // height: getProportionateScreenHeight(43),
              // width: getProportionateScreenWidth(117),
              margin: EdgeInsets.only(
                left: getProportionateScreenWidth(20),
                bottom: getProportionateScreenHeight(20),
              ),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(AppColors.primaryColor),
                  padding: MaterialStatePropertyAll(
                    EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(9),
                    ),
                  ),
                ),
                onPressed: () {},
                child: Row(
                  children: [
                    Image.asset(AppImages.logout),
                    SizedBox(
                      width: getProportionateScreenWidth(9),
                    ),
                    Text(
                      "Log Out",
                      style: TextStyle(
                        fontSize: getProportionalFontSize(16),
                        fontFamily: AppFonts.font400,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
