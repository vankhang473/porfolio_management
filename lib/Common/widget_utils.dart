/// Common function for some widget

import 'package:flutter/material.dart';
import 'package:porfolio_management/Common/device_utils.dart';
import 'package:porfolio_management/Common/font_utils.dart';

Widget getVerSpace(double verSpace) {
  return SizedBox(
    height: verSpace,
  );
}

Widget getHorSpace(double verSpace) {
  return SizedBox(
    width: verSpace,
  );
}

Widget getDivider(Color color, double height, double thickness) {
  return Divider(
    color: color,
    height: height,
    thickness: thickness,
  );
}

Widget getPaddingWidget(EdgeInsets edgeInsets, Widget widget) {
  return Padding(
    padding: edgeInsets,
    child: widget,
  );
}

Widget getMultilineCustomFont(String text, double fontSize, Color fontColor,
    {String fontFamily = CustomFont.fontLato,
    TextOverflow overflow = TextOverflow.ellipsis,
    TextDecoration decoration = TextDecoration.none,
    FontWeight fontWeight = FontWeight.normal,
    TextAlign textAlign = TextAlign.start,
    txtHeight = 1.0}) {
  return Text(
    text,
    style: TextStyle(
        decoration: decoration,
        fontSize: fontSize,
        fontStyle: FontStyle.normal,
        color: fontColor,
        fontFamily: fontFamily,
        height: txtHeight,
        fontWeight: fontWeight),
    textAlign: textAlign,
    textScaleFactor: FetchPixels.getTextScale(),
  );
}

BoxDecoration getButtonDecoration(Color bgColor,
    {BorderRadius? borderRadius,
    Border? border,
    List<BoxShadow> shadow = const [],
    DecorationImage? image}) {
  return BoxDecoration(
      color: bgColor,
      borderRadius: borderRadius,
      border: border,
      boxShadow: shadow,
      image: image);
}
