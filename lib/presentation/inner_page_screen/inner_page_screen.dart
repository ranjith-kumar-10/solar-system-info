import '../inner_page_screen/widgets/iconblock_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:ranjith_s_application3/core/app_export.dart';
import 'package:ranjith_s_application3/widgets/app_bar/appbar_iconbutton.dart';
import 'package:ranjith_s_application3/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:ranjith_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:ranjith_s_application3/widgets/custom_elevated_button.dart';

class InnerPageScreen extends StatelessWidget {
  const InnerPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            appBar: CustomAppBar(
                height: 70.v,
                leadingWidth: 72.h,
                leading: AppbarIconbutton(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: EdgeInsets.only(left: 24.h, top: 4.v, bottom: 4.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                actions: [
                  AppbarIconbutton1(
                      svgPath: ImageConstant.imgFavorite,
                      margin:
                          EdgeInsets.symmetric(horizontal: 24.h, vertical: 4.v))
                ]),
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    color: theme.colorScheme.onPrimary,
                    gradient: LinearGradient(
                        begin: Alignment(0.91, 0.09),
                        end: Alignment(0.1, 0.93),
                        colors: [
                          appTheme.cyanA400,
                          theme.colorScheme.secondaryContainer,
                          theme.colorScheme.primary
                        ]),
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgInnerpage),
                        fit: BoxFit.cover)),
                child: SizedBox(
                    height: 698.v,
                    width: double.maxFinite,
                    child: Stack(alignment: Alignment.topCenter, children: [
                      SizedBox(
                          width: double.maxFinite,
                          child: Align(
                              alignment: Alignment.bottomCenter,
                              child: OutlineGradientButton(
                                  padding: EdgeInsets.only(
                                      left: 1.h,
                                      top: 1.v,
                                      right: 1.h,
                                      bottom: 1.v),
                                  strokeWidth: 1.h,
                                  gradient: LinearGradient(
                                      begin: Alignment(0.96, 0.96),
                                      end: Alignment(0.19, 0.04),
                                      colors: [
                                        appTheme.black900.withOpacity(0.3),
                                        appTheme.black900.withOpacity(0),
                                        theme.colorScheme.onPrimaryContainer
                                            .withOpacity(0.2)
                                      ]),
                                  corners: Corners(
                                      topLeft: Radius.circular(28),
                                      topRight: Radius.circular(28),
                                      bottomLeft: Radius.circular(28),
                                      bottomRight: Radius.circular(28)),
                                  child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 41.h, vertical: 56.v),
                                      decoration: AppDecoration.outline
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder28),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            SizedBox(height: 21.v),
                                            Text("Earth",
                                                style: theme
                                                    .textTheme.headlineLarge),
                                            Expanded(
                                                child: SizedBox(
                                                    height: 147.v,
                                                    child: ListView.separated(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 12.h,
                                                                top: 25.v,
                                                                right: 12.h),
                                                        scrollDirection:
                                                            Axis.horizontal,
                                                        separatorBuilder:
                                                            (context, index) {
                                                          return SizedBox(
                                                              width: 60.h);
                                                        },
                                                        itemCount: 3,
                                                        itemBuilder:
                                                            (context, index) {
                                                          return IconblockItemWidget();
                                                        }))),
                                            SizedBox(height: 29.v),
                                            Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Column(children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgVolume,
                                                        height: 48.adaptSize,
                                                        width: 48.adaptSize),
                                                    SizedBox(height: 7.v),
                                                    SizedBox(
                                                        width: 69.h,
                                                        child: Text(
                                                            "Esc. Velocity \n(km/s)",
                                                            maxLines: 2,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: theme
                                                                .textTheme
                                                                .bodySmall)),
                                                    SizedBox(height: 3.v),
                                                    Text("11.2",
                                                        style: theme.textTheme
                                                            .headlineSmall)
                                                  ]),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 49.h),
                                                      child: Column(children: [
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgIconxlOnprimarycontainer,
                                                            height:
                                                                48.adaptSize,
                                                            width:
                                                                48.adaptSize),
                                                        SizedBox(height: 7.v),
                                                        SizedBox(
                                                            width: 51.h,
                                                            child: Text(
                                                                "Mean \nTemp (C)",
                                                                maxLines: 2,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: theme
                                                                    .textTheme
                                                                    .bodySmall)),
                                                        SizedBox(height: 2.v),
                                                        Text("15",
                                                            style: theme
                                                                .textTheme
                                                                .headlineSmall)
                                                      ])),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 43.h),
                                                      child: Column(children: [
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgIconxlOnprimarycontainer48x48,
                                                            height:
                                                                48.adaptSize,
                                                            width:
                                                                48.adaptSize),
                                                        SizedBox(height: 7.v),
                                                        SizedBox(
                                                            width: 76.h,
                                                            child: Text(
                                                                "Distance from \nSun (106 km)",
                                                                maxLines: 2,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: theme
                                                                    .textTheme
                                                                    .bodySmall)),
                                                        SizedBox(height: 3.v),
                                                        Text("5.97",
                                                            style: theme
                                                                .textTheme
                                                                .headlineSmall)
                                                      ]))
                                                ]),
                                            SizedBox(height: 37.v),
                                            CustomElevatedButton(
                                                height: 48.v,
                                                width: 146.h,
                                                text: "Visit",
                                                buttonStyle:
                                                    CustomButtonStyles.none,
                                                decoration: CustomButtonStyles
                                                    .gradientCyanAToPrimaryTL24Decoration)
                                          ]))))),
                      Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                              height: 120.adaptSize,
                              width: 120.adaptSize,
                              margin: EdgeInsets.only(top: 81.v),
                              decoration: AppDecoration.outlineGray,
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgLicensedimage120x120,
                                    height: 120.adaptSize,
                                    width: 120.adaptSize,
                                    radius: BorderRadius.circular(60.h),
                                    alignment: Alignment.center),
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        height: 120.adaptSize,
                                        width: 120.adaptSize,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(60.h),
                                            gradient: LinearGradient(
                                                begin: Alignment(0.91, 0.09),
                                                end: Alignment(0.1, 0.93),
                                                colors: [
                                                  appTheme.cyanA400,
                                                  theme.colorScheme
                                                      .secondaryContainer,
                                                  theme.colorScheme.primary
                                                ]))))
                              ])))
                    ])))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
