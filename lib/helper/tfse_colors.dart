import 'package:flutter/material.dart';

class TFSEColors {
  TFSEColors._(); // this basically makes it so you can instantiate this class

  static const Map<int, Color> colorRed =
  {
    50: Color(0xFFFE6C61),
    100: Color(0xFFFE6C61),
    200: Color(0xFFFE6C61),
    300: Color(0xFFFE6C61),
    400: Color(0xFFFE6C61),
    500: Color(0xFFFE6C61),
    600: Color(0xFFFE6C61),
    700: Color(0xFFFE6C61),
    800: Color(0xFFFE6C61),
    900: Color(0xFFFE6C61),
  };

  static const MaterialColor tfseSwatchColor = MaterialColor(0xFFFE6C61, colorRed);
  static const Color tfseBackgroundColor = Color(0xFF2C3338);
  static const Color tfseCardBackgroundColor = Color(0xFF121212);
  static const Color tfseHeaderTextColor = Color(0xFFFFFFFF);
  static const Color tfseTextFieldLabelColor = Color(0xFFFE6C61);

  // pain scale
  static const Color painScale0 = Color(0xFF73Af3A);
  static const Color painScale2 = Color(0xFF82C341);
  static const Color painScale4 = Color(0xFFFFCD05);
  static const Color painScale6 = Color(0xFFF8981D);
  static const Color painScale8 = Color(0xFFF26A22);
  static const Color painScale10 = Color(0xFFDA1A32);

  // main menu cards
  static const Color menuCardLila = Color(0xFF7956FB);
  static const Color menuCardGreen = Color(0xFF96DA45);
  static const Color menuCardOrange = Color(0xFFECA182);
  static const Color menuCardBlue = Color(0xFF2AC3FF);

  // card dark
  static const Color cardHeader = Color(0xFF444444);
  static const Color cardBackground = Color(0xFF2F2F2F);
  static const Color cardHeaderText = Color(0xFFFAFAFA);
  static const Color cardBodyText = Color(0xFFFAFAFA);
  static const Color cardLabelColor = Color(0xFFFAFAFA);
  static const Color cardTextFieldColor = Color(0xFFAAAAAA);
}