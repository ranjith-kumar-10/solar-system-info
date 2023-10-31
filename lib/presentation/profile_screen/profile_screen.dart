import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:ranjith_s_application3/core/app_export.dart';
import 'package:ranjith_s_application3/widgets/app_bar/appbar_iconbutton.dart';
import 'package:ranjith_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:ranjith_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:ranjith_s_application3/widgets/custom_checkbox_button.dart';
import 'package:ranjith_s_application3/widgets/custom_switch.dart';

// ignore_for_file: must_be_immutable
class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

  bool isSelectedSwitch = false;

  bool planetRating = false;

  bool notificationsva = false;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    color: theme.colorScheme.onPrimary,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgSplash),
                        fit: BoxFit.cover)),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      Container(
                          padding: EdgeInsets.symmetric(vertical: 18.v),
                          decoration: AppDecoration.outlineBlack.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder28),
                          child: CustomAppBar(
                              leadingWidth: 72.h,
                              leading: AppbarIconbutton(
                                  svgPath: ImageConstant.imgArrowleft,
                                  margin: EdgeInsets.only(left: 24.h),
                                  onTap: () {
                                    onTapArrowleftone(context);
                                  }),
                              centerTitle: true,
                              title: AppbarTitle(text: "My Profile"))),
                      Container(
                          padding: EdgeInsets.all(24.h),
                          child: Column(children: [
                            Container(
                                decoration: AppDecoration.outline.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder28),
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
                                    child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 17.h, vertical: 21.v),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                  height: 64.adaptSize,
                                                  width: 64.adaptSize,
                                                  margin: EdgeInsets.symmetric(
                                                      vertical: 3.v),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgImage16,
                                                            height:
                                                                64.adaptSize,
                                                            width: 64.adaptSize,
                                                            radius: BorderRadius
                                                                .circular(32.h),
                                                            alignment: Alignment
                                                                .center),
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Container(
                                                                height: 64
                                                                    .adaptSize,
                                                                width: 64
                                                                    .adaptSize,
                                                                decoration:
                                                                    BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(32
                                                                                .h),
                                                                        gradient: LinearGradient(
                                                                            begin: Alignment(0.91,
                                                                                0.09),
                                                                            end:
                                                                                Alignment(0.1, 0.93),
                                                                            colors: [
                                                                              appTheme.cyanA400,
                                                                              theme.colorScheme.secondaryContainer,
                                                                              theme.colorScheme.primary
                                                                            ]))))
                                                      ])),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 10.h,
                                                      top: 14.v,
                                                      bottom: 14.v),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text("Arthur Dent",
                                                            style: CustomTextStyles
                                                                .titleMediumOnPrimaryContainer),
                                                        SizedBox(height: 6.v),
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Text(
                                                                "Space adventurer",
                                                                style: theme
                                                                    .textTheme
                                                                    .bodySmall))
                                                      ])),
                                              Spacer(),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgEditOnprimarycontainer,
                                                  height: 24.adaptSize,
                                                  width: 24.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      right: 4.h, bottom: 46.v))
                                            ])))),
                            SizedBox(height: 24.v),
                            OutlineGradientButton(
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
                                    width: 327.h,
                                    padding: EdgeInsets.all(24.h),
                                    decoration: AppDecoration.outline.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder28),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(right: 69.h),
                                              child: Row(children: [
                                                CustomSwitch(
                                                    value: isSelectedSwitch,
                                                    onChange: (value) {
                                                      isSelectedSwitch = value;
                                                    }),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 8.h, top: 5.v),
                                                    child: Text(
                                                        "Show planetary progress",
                                                        style: theme.textTheme
                                                            .titleSmall))
                                              ])),
                                          SizedBox(height: 32.v),
                                          SizedBox(
                                              height: 260.adaptSize,
                                              width: 260.adaptSize,
                                              child: CircularProgressIndicator(
                                                  value: 0.5,
                                                  strokeWidth: 16.h)),
                                          SizedBox(height: 32.v),
                                          CustomCheckboxButton(
                                              text: "Show me in Planet Rating",
                                              value: planetRating,
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 2.v),
                                              onChange: (value) {
                                                planetRating = value;
                                              }),
                                          SizedBox(height: 32.v),
                                          CustomCheckboxButton(
                                              text: "Notifications",
                                              value: notificationsva,
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 3.v),
                                              onChange: (value) {
                                                notificationsva = value;
                                              }),
                                          SizedBox(height: 24.v)
                                        ])))
                          ]))
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
