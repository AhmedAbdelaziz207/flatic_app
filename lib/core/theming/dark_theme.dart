import 'package:fla_tic/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'app_text_styles.dart';

ThemeData darkTheme = ThemeData.dark().copyWith(
    textTheme: TextTheme(
        headlineLarge: AppTextStyles.headLineStyle.copyWith(
            color: AppColors.white,
        ),
        headlineMedium: AppTextStyles.subHeadLineStyle.copyWith(
            color: AppColors.white,
        ),
        titleLarge: AppTextStyles.sectionTitle.copyWith(
            color: AppColors.white,
        ),
        bodyMedium: AppTextStyles.bodyText.copyWith(
            color: AppColors.white,
        ),
        labelMedium: AppTextStyles.button
    ));
