import '../favourites_page/widgets/favourites_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:ranjith_s_application3/core/app_export.dart';
import 'package:ranjith_s_application3/widgets/app_bar/appbar_iconbutton.dart';
import 'package:ranjith_s_application3/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:ranjith_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:ranjith_s_application3/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class FavouritesPage extends StatelessWidget {
  const FavouritesPage({Key? key})
      : super(
          key: key,
        );

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
              image: AssetImage(
                ImageConstant.imgSplash,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            decoration: AppDecoration.fillOnPrimary.copyWith(
              image: DecorationImage(
                image: AssetImage(
                  ImageConstant.imgSplash,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 18.v),
                  decoration: AppDecoration.outlineBlack.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder28,
                  ),
                  child: CustomAppBar(
                    leadingWidth: 72.h,
                    leading: AppbarIconbutton(
                      svgPath: ImageConstant.imgIconsettings,
                      margin: EdgeInsets.only(left: 24.h),
                    ),
                    centerTitle: true,
                    title: AppbarTitle(
                      text: "Favourites",
                    ),
                    actions: [
                      AppbarIconbutton1(
                        svgPath: ImageConstant.imgIconprofile,
                        margin: EdgeInsets.symmetric(horizontal: 24.h),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    width: double.maxFinite,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 24.h),
                      child: Column(
                        children: [
                          SizedBox(height: 24.v),
                          Expanded(
                            child: ListView.separated(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (
                                context,
                                index,
                              ) {
                                return SizedBox(
                                  height: 24.v,
                                );
                              },
                              itemCount: 4,
                              itemBuilder: (context, index) {
                                return FavouritesItemWidget();
                              },
                            ),
                          ),
                          Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 0,
                            margin: EdgeInsets.all(0),
                            color: theme.colorScheme.onPrimary,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1.h,
                              ),
                              borderRadius: BorderRadiusStyle.roundedBorder28,
                            ),
                            child: Container(
                              height: 142.v,
                              width: 327.h,
                              padding: EdgeInsets.symmetric(
                                horizontal: 23.h,
                                vertical: 19.v,
                              ),
                              decoration: AppDecoration.outline.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder28,
                              ),
                              child: Stack(
                                alignment: Alignment.centerRight,
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgIconfav,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                    alignment: Alignment.topRight,
                                    margin: EdgeInsets.only(top: 3.v),
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                      padding: EdgeInsets.only(right: 6.h),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Mars",
                                            style: theme.textTheme.titleMedium,
                                          ),
                                          Container(
                                            width: 193.h,
                                            margin: EdgeInsets.only(
                                              top: 5.v,
                                              right: 6.h,
                                            ),
                                            child: Text(
                                              "Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System",
                                              maxLines: 3,
                                              overflow: TextOverflow.ellipsis,
                                              style: theme.textTheme.bodySmall,
                                            ),
                                          ),
                                          SizedBox(height: 4.v),
                                          Align(
                                            alignment: Alignment.centerRight,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 4.v),
                                                  child: Text(
                                                    "Details",
                                                    style: theme
                                                        .textTheme.labelLarge,
                                                  ),
                                                ),
                                                CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgIconmore,
                                                  height: 24.adaptSize,
                                                  width: 24.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      left: 4.h),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
