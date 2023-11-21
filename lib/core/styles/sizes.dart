import 'package:flutter/cupertino.dart';
import 'package:getx_controller/core/extension/num_extensions.dart';
import 'package:getx_controller/core/services/responsive_service.dart';

class Sizes {
  static fullScreenHeight(BuildContext context) => ResponsiveService.fullScreenHeight(context);

  static fullScreenWidth(BuildContext context) => ResponsiveService.fullScreenWidth(context);

  static availableScreenHeight(BuildContext context) =>
      ResponsiveService.availableScreenHeight(context);

  static availableScreenWidth(BuildContext context) =>
      ResponsiveService.availableScreenWidth(context);

  static statusBarHeight(BuildContext context) => ResponsiveService.deviceTopPadding(context);

  //Font sizes
  static fontSizes(BuildContext context) => {
        "h0": 40.0.sp(context),
        "h1": 32.0.sp(context),
        "h2": 24.0.sp(context),
        "h3": 20.0.sp(context),
        "h4": 17.0.sp(context),
        "h5": 14.0.sp(context),
        "h6": 12.0.sp(context),
      };

  // Icons sizes
  static iconSizes(BuildContext context) => {
        "s1": 95.r(context),
        "s2": 70.r(context),
        "s3": 48.r(context),
        "s4": 32.r(context),
        "s5": 24.r(context),
        "s6": 19.r(context),
        "s7": 14.r(context),
      };

  //Screens Padding
  static screenVPaddingDefault(BuildContext context) => 20.h(context);

  static screenHPaddingDefault(BuildContext context) => 40.w(context);

  static screenVPaddingHigh(BuildContext context) => 80.h(context);

  static screenHPaddingMedium(BuildContext context) => 36.w(context);

  //Widgets Padding
  static vPaddingHighest(BuildContext context) => 40.h(context);

  static vPaddingHigh(BuildContext context) => 30.h(context);

  static vPaddingMedium(BuildContext context) => 22.h(context);

  static vPaddingSmall(BuildContext context) => 16.h(context);

  static vPaddingSmallest(BuildContext context) => 10.h(context);

  static vPaddingTiny(BuildContext context) => 5.h(context);

  static hPaddingHighest(BuildContext context) => 40.h(context);

  static hPaddingHigh(BuildContext context) => 30.h(context);

  static hPaddingMedium(BuildContext context) => 22.h(context);

  static hPaddingSmall(BuildContext context) => 16.h(context);

  static hPaddingSmallest(BuildContext context) => 10.h(context);

  static hPaddingTiny(BuildContext context) => 5.h(context);

  //Widgets Margin
  static vMarginExtreme(BuildContext context) => 80.h(context);

  static vMarginHighest(BuildContext context) => 40.h(context);
}
