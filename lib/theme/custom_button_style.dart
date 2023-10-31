import 'dart:ui';
import 'package:ranjith_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Gradient button style
  static BoxDecoration get gradientCyanAToPrimaryTL24Decoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(24.h),
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
        gradient: LinearGradient(
          begin: Alignment(0.91, 0),
          end: Alignment(0.1, 0),
          colors: [
            appTheme.cyanA400,
            theme.colorScheme.primary,
          ],
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
