import 'package:flutter/material.dart';
import 'package:getx_controller/core/styles/sizes.dart';

class FontStyles{
  static fontFamily(BuildContext context) => tr(context).fontFamily;

  static const fontWeightBlack = FontWeight.w900;
  static const fontWeightExtraBold = FontWeight.w800;
  static const fontWeightBold = FontWeight.bold;
  static const fontWeightSemiBold = FontWeight.w600;
  static const fontWeightMedium = FontWeight.w500;
  static const fontWeightNormal = FontWeight.normal;
  static const fontWeightLight = FontWeight.w300;
  static const fontWeightExtraLight = FontWeight.w200;
  static const fontWeightThin = FontWeight.w100;
  static const fontStyleNormal = FontStyle.normal;

  static mapSearchBarFontStyle(BuildContext context) => TextStyle(
    fontSize: Sizes.fontSizes(context)['h4'],
    color: Theme.of(context).textTheme.titleMedium!.color,
    fontFamily: fontFamily(context),
    fontWeight: fontWeightNormal,
    fontStyle: fontStyleNormal,
  );

}