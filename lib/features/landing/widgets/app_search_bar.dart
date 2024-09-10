import 'package:easy_localization/easy_localization.dart';
import 'package:fla_tic/core/helpers/locale_keys.g.dart';
import 'package:fla_tic/core/theming/app_colors.dart';
import 'package:fla_tic/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppSearchBar extends StatelessWidget {
    const AppSearchBar({super.key});

    @override
    Widget build(BuildContext context) {
        return TextField(
            decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.lightGrey,
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(20),
                ),
                hintText: LocaleKeys.searchHint.tr(),
                hintStyle: AppTextStyles.hintStyle,
                suffixIcon: Padding(
                    padding: EdgeInsets.only(right: 8.0.w),
                    child: Icon(
                        Icons.search,
                        size: 30.r,
                        color: AppColors.lightGreyWithShade,
                    ),
                ),
            ),
        );
    }
}
