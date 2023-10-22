import 'package:flutter/material.dart';
import 'dart:ui';

const cBackground = Color(0xDCF5ECEC);
Color cBackgroundFromHex = "#F9FAFC".toColor();

extension ColorExtension on String {
  toColor() {
    var hexColor = replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    if (hexColor.length == 8) {
      return Color(int.parse("0x$hexColor"));
    }
  }
}
