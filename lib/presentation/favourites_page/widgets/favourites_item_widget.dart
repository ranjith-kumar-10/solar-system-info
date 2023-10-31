import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:ranjith_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class FavouritesItemWidget extends StatelessWidget {
  const FavouritesItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outline.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder28,
      ),
      child: OutlineGradientButton(
        padding: EdgeInsets.only(
          left: 1.h,
          top: 1.v,
          right: 1.h,
          bottom: 1.v,
        ),
        strokeWidth: 1.h,
        gradient: LinearGradient(
          begin: Alignment(0.96, 0.96),
          end: Alignment(0.19, 0.04),
          colors: [
            appTheme.black900.withOpacity(0.3),
            appTheme.black900.withOpacity(0),
            theme.colorScheme.onPrimaryContainer.withOpacity(0.2),
          ],
        ),
        corners: Corners(
          topLeft: Radius.circular(28),
          topRight: Radius.circular(28),
          bottomLeft: Radius.circular(28),
          bottomRight: Radius.circular(28),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 23.h,
            vertical: 19.v,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 60.adaptSize,
                width: 60.adaptSize,
                margin: EdgeInsets.only(
                  left: 3.h,
                  top: 5.v,
                  bottom: 39.v,
                ),
                decoration: AppDecoration.outlineGray,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgLicensedimage60x60,
                      height: 60.adaptSize,
                      width: 60.adaptSize,
                      radius: BorderRadius.circular(
                        30.h,
                      ),
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 60.adaptSize,
                        width: 60.adaptSize,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            30.h,
                          ),
                          gradient: LinearGradient(
                            begin: Alignment(0.91, 0.09),
                            end: Alignment(0.1, 0.93),
                            colors: [
                              appTheme.cyanA400,
                              theme.colorScheme.secondaryContainer,
                              theme.colorScheme.primary,
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 101.v,
                width: 206.h,
                margin: EdgeInsets.only(top: 3.v),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgIconfav,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      alignment: Alignment.topRight,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.only(right: 6.h),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Mercury",
                              style: theme.textTheme.titleMedium,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 4.v,
                                right: 5.h,
                              ),
                              child: Text(
                                "Mercury is the smallest planet in the Solar System and the closest to the Sun.",
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.bodySmall,
                              ),
                            ),
                            SizedBox(height: 6.v),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 4.v),
                                    child: Text(
                                      "Details",
                                      style: theme.textTheme.labelLarge,
                                    ),
                                  ),
                                  CustomImageView(
                                    svgPath: ImageConstant.imgIconmore,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                    margin: EdgeInsets.only(left: 4.h),
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
            ],
          ),
        ),
      ),
    );
  }
}
