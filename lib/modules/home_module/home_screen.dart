import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:good_foods/config/app_fonts.dart';
import 'package:good_foods/config/size_config.dart';
import 'package:good_foods/libraries/advanced_drawer/flutter_advanced_drawer.dart';
import 'package:good_foods/modules/home_module/home_controller.dart';
import 'package:good_foods/utils/app_images.dart';
import 'package:good_foods/utils/colors.dart';
import 'package:good_foods/widgets/drawer.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      drawer: DrawerScreen(),
      backdrop: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(color: Colors.white),
      ),
      controller: controller.advancedDrawerController,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: true,
      rtlOpening: false,
      openScale: 0.7,
      openRatio: .55,
      disabledGestures: false,
      childDecoration: const BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Color(0xFFF2EAEA),
              blurRadius: 99,
              spreadRadius: 0,
              offset: Offset(-25.0, 19.0)),
        ],
        borderRadius: BorderRadius.all(
          Radius.circular(28),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: GetBuilder<HomeController>(
          builder: (HomeController homeController) {
            return SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: getProportionateScreenHeight(15),
                        bottom: getProportionateScreenHeight(10),
                        left: getProportionateScreenWidth(25),
                        right: getProportionateScreenWidth(25)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            controller.advancedDrawerController.showDrawer();
                          },
                          child: Container(
                            height: getProportionateScreenHeight(38),
                            width: getProportionateScreenWidth(38),
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 2.2,
                                  spreadRadius: 0.4,
                                  offset: Offset(1.0, 2.0),
                                ),
                              ],
                            ),
                            child: SvgPicture.asset(AppImages.sort2),
                          ),
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Deliver to ",
                                  style: TextStyle(
                                    fontSize: getProportionalFontSize(14),
                                    fontFamily: AppFonts.font500,
                                    color: const Color(0xFF8C9099),
                                  ),
                                ),
                                const Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  size: 17,
                                  color: Color(0xFF8C9099),
                                ),
                              ],
                            ),
                            Text(
                              "4102  Pretty View Lane ",
                              style: TextStyle(
                                fontFamily: AppFonts.font500,
                                fontSize: getProportionalFontSize(15),
                                color: AppColors.primaryColor,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: getProportionateScreenHeight(38),
                          width: getProportionateScreenWidth(38),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                getProportionateScreenHeight(12)),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 2.2,
                                spreadRadius: 0.4,
                                offset: Offset(1.0, 2.0),
                              ),
                            ],
                            image: DecorationImage(
                              image: AssetImage(AppImages.profile),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      // clipBehavior: Clip.none,
                      child: Column(
                        children: [
                          SizedBox(
                            height: getProportionateScreenHeight(24),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: getProportionateScreenWidth(25),
                            ),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "What would you like \nto order",
                                style: TextStyle(
                                    fontSize: getProportionalFontSize(30),
                                    fontFamily: AppFonts.font700,
                                    color: const Color(0xFF323643)),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(9),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: getProportionateScreenWidth(25),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: SizedBox(
                                    // height: getProportionateScreenHeight(51),
                                    height: 51,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        prefixIcon: Icon(
                                          Icons.search,
                                          color: Color(0xFF767F9D),
                                        ),
                                        hintText:
                                            "Find for food or restaurant...",
                                        contentPadding: EdgeInsets.symmetric(
                                          horizontal:
                                              getProportionateScreenWidth(16),
                                          vertical:
                                              getProportionateScreenHeight(18),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: AppColors.primaryColor),
                                          borderRadius: BorderRadius.circular(
                                            getProportionateScreenWidth(10),
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: AppColors.textFieldColor),
                                          borderRadius: BorderRadius.circular(
                                            getProportionateScreenWidth(10),
                                          ),
                                        ),
                                        hintStyle: TextStyle(
                                          color: AppColors.hintTextColor,
                                          fontSize: getProportionalFontSize(14),
                                          fontFamily: AppFonts.font400,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: getProportionateScreenWidth(18),
                                ),
                                Container(
                                  height: getProportionateScreenHeight(51),
                                  width: getProportionateScreenWidth(51),
                                  padding: const EdgeInsets.all(16),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(
                                        getProportionateScreenWidth(14),
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0xFFE9EDF2)
                                              .withOpacity(0.50),
                                          blurRadius: 30,
                                          offset: Offset(0.0, 15),
                                        ),
                                      ]),
                                  child: SvgPicture.asset(AppImages.filter),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(30),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            clipBehavior: Clip.none,
                            padding: EdgeInsets.symmetric(
                                horizontal: getProportionateScreenWidth(25)),
                            physics: const BouncingScrollPhysics(),
                            child: Wrap(
                              spacing: getProportionateScreenWidth(14),
                              children: List.generate(
                                10,
                                (index) => GestureDetector(
                                  onTap: () {
                                    controller.selectedCategory = index;
                                    controller.update();
                                  },
                                  child: Container(
                                    padding: EdgeInsets.only(
                                        bottom: 19,
                                        left: 4.51,
                                        top: 4.51,
                                        right: 4.51),
                                    decoration: BoxDecoration(
                                        color:
                                            controller.selectedCategory == index
                                                ? AppColors.primaryColor
                                                : Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        boxShadow: [
                                          controller.selectedCategory == index
                                              ? BoxShadow(
                                                  color: Color(0xFFFE724C)
                                                      .withOpacity(0.251),
                                                  blurRadius: 30,
                                                  offset: Offset(0.0, 20.0),
                                                )
                                              : BoxShadow(
                                                  color: Color(0xFFD3D1D8)
                                                      .withOpacity(0.251),
                                                  blurRadius: 30,
                                                  offset: Offset(0.0, 20.0))
                                        ]),
                                    child: Column(
                                      children: [
                                        Container(
                                          height:
                                              getProportionateScreenHeight(50),
                                          width:
                                              getProportionateScreenWidth(50),
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      AppImages.pizza))),
                                        ),
                                        SizedBox(
                                          height:
                                              getProportionateScreenHeight(8),
                                        ),
                                        Text(
                                          "Pizza",
                                          style: TextStyle(
                                              fontSize:
                                                  getProportionalFontSize(11),
                                              fontFamily: AppFonts.font500,
                                              color:
                                                  controller.selectedCategory ==
                                                          index
                                                      ? Colors.white
                                                      : Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(30),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: getProportionateScreenWidth(25),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Featured Restaurants",
                                  style: TextStyle(
                                      fontSize: getProportionalFontSize(18),
                                      fontFamily: AppFonts.font500,
                                      color: const Color(0xFF323643)),
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: SizedBox(
                                    child: Row(
                                      children: [
                                        Text(
                                          "View All",
                                          style: TextStyle(
                                              fontSize:
                                                  getProportionalFontSize(13),
                                              fontFamily: AppFonts.font400,
                                              color: AppColors.primaryColor),
                                        ),
                                        Icon(
                                          Icons.chevron_right,
                                          color: Color(0xFFFE724C),
                                          size: 18,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(12),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            clipBehavior: Clip.none,
                            padding: EdgeInsets.symmetric(
                                horizontal: getProportionateScreenWidth(25)),
                            child: Wrap(
                              children: List.generate(
                                4,
                                (index) => Container(
                                  width: getProportionateScreenWidth(266),
                                  padding: EdgeInsets.only(
                                      bottom: getProportionateScreenHeight(10)),
                                  margin: EdgeInsets.only(
                                      right: getProportionateScreenWidth(15)),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 30,
                                          offset: Offset(15.0, 15.0),
                                          color: Color(0xFFD3D1D8)
                                              .withOpacity(0.25),
                                        )
                                      ]),
                                  child: Column(
                                    children: [
                                      Stack(
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(15),
                                              topRight: Radius.circular(15),
                                            ),
                                            child: Image.asset(
                                              AppImages.homeFood1,
                                              fit: BoxFit.fill,
                                              width:
                                                  getProportionateScreenWidth(
                                                      266),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                              horizontal:
                                                  getProportionateScreenWidth(
                                                      10),
                                              vertical:
                                                  getProportionateScreenHeight(
                                                      10),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  height: 28,
                                                  width:
                                                      getProportionateScreenWidth(
                                                          69),
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            getProportionateScreenWidth(
                                                                100)),
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        "4.5",
                                                        style: TextStyle(
                                                            fontSize:
                                                                getProportionalFontSize(
                                                                    11),
                                                            fontFamily: AppFonts
                                                                .font500),
                                                      ),
                                                      SizedBox(
                                                        width:
                                                            getProportionateScreenWidth(
                                                                4.2),
                                                      ),
                                                      Icon(
                                                        Icons.star,
                                                        color:
                                                            Color(0xFFFFC529),
                                                        size: 12,
                                                      ),
                                                      Text(
                                                        "(25+)",
                                                        style: TextStyle(
                                                            fontSize:
                                                                getProportionalFontSize(
                                                                    8),
                                                            fontFamily: AppFonts
                                                                .font400,
                                                            color: AppColors
                                                                .hintTextColor),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  height: 28,
                                                  width: 28,
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: AppColors
                                                          .primaryColor),
                                                  child: Icon(
                                                    Icons.favorite,
                                                    color: Colors.white,
                                                    size: 17,
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: getProportionateScreenWidth(10),
                                          top: getProportionateScreenHeight(12),
                                          bottom:
                                              getProportionateScreenHeight(4),
                                        ),
                                        child: Row(
                                          children: [
                                            Text(
                                              "McDonald’s",
                                              style: TextStyle(
                                                fontSize:
                                                    getProportionalFontSize(15),
                                                fontFamily: AppFonts.font500,
                                              ),
                                            ),
                                            SizedBox(
                                              width:
                                                  getProportionateScreenWidth(
                                                      18),
                                            ),
                                            Container(
                                              height: 10,
                                              width: 10,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Color(0xFF029094)),
                                              child: Icon(
                                                Icons.done,
                                                size: 6,
                                                color: Colors.white,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: getProportionateScreenWidth(10),
                                        ),
                                        child: Row(
                                          children: [
                                            SvgPicture.asset(AppImages.bike),
                                            SizedBox(
                                              width:
                                                  getProportionateScreenWidth(
                                                      6),
                                            ),
                                            Text(
                                              "Free delivery",
                                              style: TextStyle(
                                                fontSize:
                                                    getProportionalFontSize(12),
                                                fontFamily: AppFonts.font400,
                                                color: Color(0xFF7E8392),
                                              ),
                                            ),
                                            SizedBox(
                                              width:
                                                  getProportionateScreenWidth(
                                                      26),
                                            ),
                                            SvgPicture.asset(AppImages.watch),
                                            SizedBox(
                                              width:
                                                  getProportionateScreenWidth(
                                                      6),
                                            ),
                                            Text(
                                              "10-15 mins",
                                              style: TextStyle(
                                                fontSize:
                                                    getProportionalFontSize(12),
                                                fontFamily: AppFonts.font400,
                                                color: Color(0xFF7E8392),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height:
                                            getProportionateScreenHeight(10),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: SizedBox(
                                          height: 26,
                                          child: ListView.builder(
                                            itemCount: 3,
                                            padding: EdgeInsets.only(
                                              left: getProportionateScreenWidth(
                                                  10),
                                            ),
                                            shrinkWrap: true,
                                            scrollDirection: Axis.horizontal,
                                            itemBuilder: (context, index) {
                                              return Container(
                                                margin: EdgeInsets.only(
                                                  right:
                                                      getProportionateScreenWidth(
                                                          8),
                                                ),
                                                padding: EdgeInsets.symmetric(
                                                    vertical:
                                                        getProportionateScreenHeight(
                                                            3),
                                                    horizontal:
                                                        getProportionateScreenWidth(
                                                            4)),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  color: Color(0xFFf6f6f6),
                                                ),
                                                child: Text(
                                                  "Burger",
                                                  style: TextStyle(
                                                    fontSize:
                                                        getProportionalFontSize(
                                                            12),
                                                    fontFamily:
                                                        AppFonts.font400,
                                                    color: Color(0xFF8A8E9B),
                                                  ),
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(24),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: getProportionateScreenWidth(25),
                            ),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Popular Items",
                                style: TextStyle(
                                    fontSize: getProportionalFontSize(18),
                                    fontFamily: AppFonts.font500,
                                    color: const Color(0xFF323643)),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(12),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            clipBehavior: Clip.none,
                            padding: EdgeInsets.symmetric(
                                horizontal: getProportionateScreenWidth(25)),
                            child: Wrap(
                              children: List.generate(
                                5,
                                (index) => GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    width: getProportionateScreenWidth(155),
                                    padding: EdgeInsets.only(
                                      bottom: getProportionateScreenHeight(10),
                                    ),
                                    margin: EdgeInsets.only(
                                        right: getProportionateScreenWidth(15)),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 30,
                                            offset: Offset(15.0, 15.0),
                                            color: Color(0xFFD3D1D8)
                                                .withOpacity(0.25),
                                          )
                                        ]),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Stack(
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              child: Image.asset(
                                                AppImages.noodle,
                                                width:
                                                    getProportionateScreenWidth(
                                                        155),
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getProportionateScreenWidth(
                                                          10),
                                                  right:
                                                      getProportionateScreenWidth(
                                                          10),
                                                  top:
                                                      getProportionateScreenHeight(
                                                          10)),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                      horizontal:
                                                          getProportionateScreenWidth(
                                                              7),
                                                      vertical:
                                                          getProportionateScreenHeight(
                                                              4),
                                                    ),
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              100),
                                                    ),
                                                    child: RichText(
                                                      text: TextSpan(
                                                        children: [
                                                          TextSpan(
                                                              text: "\$",
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      AppFonts
                                                                          .font500,
                                                                  fontSize:
                                                                      getProportionalFontSize(
                                                                          8),
                                                                  color: AppColors
                                                                      .primaryColor)),
                                                          TextSpan(
                                                              text: "5.50",
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      AppFonts
                                                                          .font500,
                                                                  fontSize:
                                                                      getProportionalFontSize(
                                                                          11),
                                                                  color: Colors
                                                                      .black)),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 28,
                                                    width: 28,
                                                    decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color: AppColors
                                                            .primaryColor),
                                                    child: Icon(
                                                      Icons.favorite,
                                                      color: Colors.white,
                                                      size: 17,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Container(
                                              height: 28,
                                              width:
                                                  getProportionateScreenWidth(
                                                      69),
                                              margin: EdgeInsets.only(
                                                top: 136,
                                                left:
                                                    getProportionateScreenWidth(
                                                        10),
                                              ),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    getProportionateScreenWidth(
                                                        100),
                                                  ),
                                                  boxShadow: [
                                                    BoxShadow(
                                                        blurRadius: 20,
                                                        color: Color(0xFFFE724C)
                                                            .withOpacity(0.20),
                                                        offset:
                                                            Offset(0.0, 5.0))
                                                  ]),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "4.5",
                                                    style: TextStyle(
                                                        fontSize:
                                                            getProportionalFontSize(
                                                                11),
                                                        fontFamily:
                                                            AppFonts.font500),
                                                  ),
                                                  SizedBox(
                                                    width:
                                                        getProportionateScreenWidth(
                                                            4.2),
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    color: Color(0xFFFFC529),
                                                    size: 12,
                                                  ),
                                                  Text(
                                                    "(25+)",
                                                    style: TextStyle(
                                                        fontSize:
                                                            getProportionalFontSize(
                                                                8),
                                                        fontFamily:
                                                            AppFonts.font400,
                                                        color: AppColors
                                                            .hintTextColor),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height:
                                              getProportionateScreenHeight(6),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left:
                                                getProportionateScreenWidth(10),
                                          ),
                                          child: Text(
                                            "Salmon Salad",
                                            style: TextStyle(
                                                fontSize:
                                                    getProportionalFontSize(14),
                                                fontFamily: AppFonts.font500),
                                          ),
                                        ),
                                        SizedBox(
                                          height:
                                              getProportionateScreenHeight(5),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left:
                                                getProportionateScreenWidth(10),
                                          ),
                                          child: Text(
                                            "Baked salmon fish",
                                            style: TextStyle(
                                                fontSize:
                                                    getProportionalFontSize(12),
                                                fontFamily: AppFonts.font400,
                                                color: AppColors.hintTextColor),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(25),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}