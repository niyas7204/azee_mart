import 'package:anm_mart/constants/global_colors.dart';
import 'package:flutter/material.dart';

class GlobalTexts {
  static labelText(String text) => Text(
        text,
        style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: GlobalColors.secondaryColor),
      );
  static header1(String text) => Text(
        text,
        style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w600,
            color: GlobalColors.secondaryColor),
      );
  static nameText(String text) => Text(
        text,
        style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: GlobalColors.secondaryColor),
      );
}
