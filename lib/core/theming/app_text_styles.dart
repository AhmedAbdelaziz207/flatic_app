import 'package:fla_tic/core/theming/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTextStyles {
    static TextStyle headLineStyle =  GoogleFonts.poppins(
        fontWeight: FontWeight.w700,
        fontSize: 28,
        color: AppColors.black,
    );

    static TextStyle subHeadLineStyle = TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w500,
        fontSize: 25.sp,
        color: AppColors.black,
    );
    static TextStyle hintStyle = TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w400,
        fontSize: 24.sp,
        color: AppColors.lightGreyWithShade,
    );
    static TextStyle bodyText = TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w500,
        fontSize: 16.sp,
        color: AppColors.black,
    );
    static TextStyle sectionTitle = TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600,
        fontSize: 24.sp,
        color: AppColors.black,
    );
    static TextStyle button = TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.bold,
        fontSize: 21.sp,
        color: AppColors.white,
    );
}
