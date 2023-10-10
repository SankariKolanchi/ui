import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_text_style.dart';

sealed class AppTheme {
  const AppTheme._();

  static ThemeData appTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Inter',
    scaffoldBackgroundColor: AppColors.scaffoldColor,
    iconTheme: const IconThemeData(color: Colors.black),
    textTheme: AppTextTheme.getTextTheme(),
    progressIndicatorTheme:
        const ProgressIndicatorThemeData(color: AppColors.redColor),
    dividerTheme:
        const DividerThemeData(thickness: 0.8, color: AppColors.greyColor),
    appBarTheme: const AppBarTheme(
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0.5,
        scrolledUnderElevation: 0),
    cardTheme: const CardTheme(color: Colors.white, elevation: 0.5),
    popupMenuTheme: const PopupMenuThemeData(
        surfaceTintColor: Colors.white, position: PopupMenuPosition.under),
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(
          borderSide: BorderSide(width: 3, color: Colors.black)),
    ),
  );
}
