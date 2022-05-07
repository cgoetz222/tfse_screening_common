import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tfse_screening_common/helper/tfse_colors.dart';
import 'package:tfse_screening_common/helper/tfse_styles.dart';

class CustomWidgets {
  static Widget textField(double width,
                          {bool isNumber = true,
                          TextEditingController? textController,
                          int lines = 1}) {
    return SizedBox(
      width: width,
      child:  TextFormField(
        maxLines: lines,
        controller: textController,
        style: const TextStyle(color: TFSEColors.textFieldTextColor),
        cursorColor: TFSEColors.textFieldCursorColor,
        inputFormatters: [//
          // ^: begin of string
          // [^a-zA-ZäöüÄÖÜß!"§$%&/()[\]{}=\?\\`´\*\+~#\-_:,;<>|²³µ]: exclude leading special characters sign
          // (\d*.[^-]): allow digits and one . but exclude - sign
          // ?\d{0,2}: allow up to two decimals
          isNumber ? FilteringTextInputFormatter.allow(RegExp(r'^[^a-zA-ZäöüÄÖÜß!"§$%&/()[\]{}=\?\\`´\*\+~#\-_:,;<>|²³µ](\d*.[^-])?\d{0,2}')) : FilteringTextInputFormatter.allow(RegExp('[a-zA-Z]')),
        ],
        decoration: InputDecoration(
          isDense: true,                      // Added this
          contentPadding: const EdgeInsets.all(8),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: TFSEColors.textFieldFocusedBorderColor),
              borderRadius: BorderRadius.circular(4)
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: TFSEColors.textFieldBorder),
              borderRadius: BorderRadius.circular(4)
          ),
          border: OutlineInputBorder(
              borderSide: const BorderSide(color: TFSEColors.textFieldBorder),
              borderRadius: BorderRadius.circular(4)
          ),
          fillColor: TFSEColors.textFieldBackgroundColor,
          filled: true,
        ),
      ),
    );
  }

  static Widget paddedText(String text, bool enabled) {
    return Padding(
      padding: const EdgeInsets.only(top: 4),
      child: Text(text, style: enabled ? TFSEStyles.tableHeaderStyle : TFSEStyles.tableContentStyle,),
    );
  }
}