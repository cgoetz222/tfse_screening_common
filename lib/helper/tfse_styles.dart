import 'package:flutter/material.dart';
import 'package:tfse_screening_common/helper/tfse_colors.dart';

class TFSEStyles {
  TFSEStyles._(); // this basically makes it so you can instantiate this class

  static const TextStyle headerStyle = TextStyle(
      fontSize: 18.0,
      color: TFSEColors.tfseHeaderTextColor,
      fontWeight: FontWeight.bold
    //fontStyle: FontStyle.italic,
    //fontFamily: 'cursive'
  );

  static const TextStyle menuCardStyle = TextStyle(
      fontSize: 22.0,
      color: Colors.white,
      letterSpacing: 1.1,
      fontWeight: FontWeight.bold
  );

  static const TextStyle menuCardNumberStyle = TextStyle(
      fontSize: 34.0,
      color: Colors.white,
      letterSpacing: 1.1,
      fontWeight: FontWeight.bold
  );

  static const TextStyle tableHeaderStyle = TextStyle(
      fontSize: 14.0,
      color: Colors.white,
      fontWeight: FontWeight.bold
  );

  static const TextStyle tableContentStyle = TextStyle(
      fontSize: 14.0,
      color: TFSEColors.cardTextFieldColor,
      fontWeight: FontWeight.bold
  );

  static const TextStyle textFieldLabelStyle = TextStyle(
      fontSize: 18.0,
      color: TFSEColors.cardLabelColor,
      letterSpacing: 1.3,
      fontWeight: FontWeight.bold
  );

  static const TextStyle textFieldLabelStyle1 = TextStyle(
      fontSize: 18.0,
      color: TFSEColors.cardLabelColor,
      letterSpacing: 1.3,
      fontWeight: FontWeight.bold
  );

  static const TextStyle normalTextStyle = TextStyle(
      fontSize: 14.0,
      color: TFSEColors.tfseHeaderTextColor,
      fontWeight: FontWeight.bold
  );

  // cards
  static const TextStyle cardHeaderStyle = TextStyle(
      fontSize: 18.0,
      color: TFSEColors.cardHeaderText,
      fontWeight: FontWeight.bold
  );
  static const TextStyle cardBodyStyle = TextStyle(
      fontSize: 14.0,
      color:   TFSEColors.cardBodyText,
      fontWeight: FontWeight.normal
  );
  static const TextStyle cardTextFieldStyle = TextStyle(
      fontSize: 14.0,
      color:   TFSEColors.cardTextFieldColor,
      fontWeight: FontWeight.normal
  );

  // drag & drop list
  static const TextStyle drapAndDropListContentStyle = TextStyle(
      fontSize: 14.0,
      color: TFSEColors.cardBackground,
      fontWeight: FontWeight.bold
  );

  // button
  static const TextStyle buttonTextStyle = TextStyle(
      fontSize: 14.0,
      color: TFSEColors.buttonTextColor,
      fontWeight: FontWeight.bold
  );
}