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

//  static const MaterialColor tfseSwatchColor = MaterialColor(0xFFFE6C61, colorRed);
  static const MaterialColor tfseSwatchColor = MaterialColor(0xFF2A6137, colorRed);
  static const Color tfseBackgroundColor = Color(0xFF2C3338);
  static const Color scaffoldBackgroundColor = Color(0xFF121212);
  static const Color tfseHeaderTextColor = Color(0xFFFFFFFF);
  static const Color tfseTextFieldLabelColor = Color(0xFFFE6C61);

  // drag & drop list
  static const Color tfseDragAndDropHeaderBackgroundColor = Color(0xFF5E96BA);
  static const Color tfseDragAndDropItemBackgroundColor = Color(0xFFFAFAFA);

  // text input field
  static const Color textFieldBackgroundColor = Color(0xDDFAFAFA);
  static const Color textFieldFocusedBorderColor = Color(0xFF5E96BA);
  static const Color textFieldCursorColor = Color(0xFF5E96BA);
  static const Color textFieldTextColor = Color(0xFF2F2F2F);
  static const Color textFieldBorder = Color(0xFF444444);

  // radio button
  static const Color radioButtonActiveColor = Color(0xFF5E96BA);

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
  static const Color menuCardLightGreen = Color(0xFFBAF692);
  static const Color menuCardOrange = Color(0xFFECA182);
  static const Color menuCardBlue = Color(0xFF2AC3FF);
  static const Color menuCardYellow = Color(0xFFFFCB2A);
  static const Color menuCardGrey = Color(0xFF444444);

  // card dark
  static const Color cardHeader = Color(0xFF444444);
  static const Color cardBackground = Color(0xFF2F2F2F);
  static const Color cardHeaderText = Color(0xFFFAFAFA);
  static const Color cardBodyText = Color(0xFFFAFAFA);
  static const Color cardLabelColor = Color(0xFFFAFAFA);
  static const Color cardTextFieldColor = Color(0xFFAAAAAA);

  // button
  static const Color buttonBackgroundColor = Color(0xFF2F2F2F);
  static const Color buttonTextColor = Color(0xFF16A7E8);
  static const Color buttonCircleGoColor = Color(0xFFFE6C61);
  static const Color buttonCircleOkColor = Color(0xFFBAF692);

  // progress indicator
  static const Color progressIndicatorActiveColor = Color(0xFF16A7E8);
  static const Color progressIndicatorInactiveColor = scaffoldBackgroundColor;

  // text for exercise teaser
  static const Color textExerciseTeaserOrange = Color(0xFFFD9E10);
  static const Color textExerciseTeaserLightBlue = Color(0xFFB3E1F9);
  static const Color textExerciseTeaserLightGreen = Color(0xFFBAF692);

  // timer
  static const Color progressIndicatorTimerActiveColor = Color(0xFF16A7E8);

  // statistic
  static const Color statisticCalendarHeaderBackgroundColor = Color(0xFFE4E7EB);
  static const Color statisticCalendarBackgroundColor = Color(0xFFF5F7F9);
  static const Color statisticCalendarActiveDayColor = Color(0xFF406599);
}