import 'package:flutter/material.dart';
import 'package:imepay_assesment/theme/custom_colors.dart';
import 'package:imepay_assesment/theme/theme_helper.dart';

extension on TextStyle {
  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get inika {
    return copyWith(
      fontFamily: 'Inika',
    );
  }
}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  // Body text style bodySmallBlack900
  static get bodySmallBlack => theme.textTheme.bodyMedium!.inter
      .copyWith(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black);
  static get menutitle => theme.textTheme.bodyMedium!.inter.copyWith(
        fontSize: 12,
        fontWeight: FontWeight.w600,
      );
  static get navigationbarstyle => theme.textTheme.bodyMedium!.inter.copyWith(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: CustomColors.disabledColor);
  static get navigationbarstyleselected =>
      theme.textTheme.bodyMedium!.inter.copyWith(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: CustomColors.primaryColor);
  static get walletinfo => theme.textTheme.bodyMedium!.inter.copyWith(
      fontSize: 12,
      fontWeight: FontWeight.bold,
      color: const Color(0xFF787c7d));
// Title text style

  static get titleLargeInter => theme.textTheme.titleLarge!.inter
      .copyWith(fontSize: 20, fontWeight: FontWeight.w500);
  static get titleMediumInter => theme.textTheme.titleLarge!.inter
      .copyWith(fontSize: 13, fontWeight: FontWeight.w400);

  static get titleSmallSemiBold => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );
}
