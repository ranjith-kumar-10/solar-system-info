import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeFigtreeBluegray400 =>
      theme.textTheme.bodyLarge!.figtree.copyWith(
        color: appTheme.blueGray400,
      );
  static get bodyMediumBluegray400 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray400,
      );
  static get bodySmallBluegray400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray400,
      );
  static get bodySmallBluegray40010 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray400,
        fontSize: 10.fSize,
      );
  static get bodySmallBluegray400_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray400,
      );
  // Label text style
  static get labelMediumOnPrimaryContainer =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  // Title text style
  static get titleMediumOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get titleMediumOnPrimaryContainerBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleSmallCyanA40001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.cyanA40001,
        fontWeight: FontWeight.w700,
      );
}

extension on TextStyle {
  TextStyle get figtree {
    return copyWith(
      fontFamily: 'Figtree',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }
}
