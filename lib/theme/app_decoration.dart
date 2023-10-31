import 'package:flutter/material.dart';
import 'package:ranjith_s_application3/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black900,
      );
  static BoxDecoration get fillOnPrimary => BoxDecoration(
        color: theme.colorScheme.onPrimary,
      );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );

  // Gradient decorations
  static BoxDecoration get gradientCyanAToPrimary => BoxDecoration(
        color: theme.colorScheme.onPrimary,
        gradient: LinearGradient(
          begin: Alignment(0.91, 0.09),
          end: Alignment(0.1, 0.93),
          colors: [
            appTheme.cyanA400,
            theme.colorScheme.secondaryContainer,
            theme.colorScheme.primary,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outline => BoxDecoration(
        color: theme.colorScheme.onPrimary,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              -4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: theme.colorScheme.onPrimary,
        border: Border.all(
          color: appTheme.black900,
          width: 2.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              -4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray => BoxDecoration();
  static BoxDecoration get outline1 => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(0.8),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              -4,
            ),
          ),
        ],
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder12 => BorderRadius.circular(
        12.h,
      );
  static BorderRadius get circleBorder148 => BorderRadius.circular(
        148.h,
      );
  static BorderRadius get circleBorder24 => BorderRadius.circular(
        24.h,
      );
  static BorderRadius get circleBorder32 => BorderRadius.circular(
        32.h,
      );
  static BorderRadius get circleBorder60 => BorderRadius.circular(
        60.h,
      );

  // Rounded borders
  static BorderRadius get roundedBorder28 => BorderRadius.circular(
        28.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
