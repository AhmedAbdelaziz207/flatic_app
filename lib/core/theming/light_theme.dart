import 'package:fla_tic/app.dart';
import 'package:fla_tic/core/theming/app_colors.dart';
import 'package:fla_tic/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.white,
    textTheme: TextTheme(
        headlineLarge: AppTextStyles.headLineStyle,
        headlineMedium: AppTextStyles.subHeadLineStyle,
        titleLarge: AppTextStyles.sectionTitle,
        bodyMedium: AppTextStyles.bodyText,
        labelMedium: AppTextStyles.button,
    ));
