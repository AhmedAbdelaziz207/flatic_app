import 'package:easy_localization/easy_localization.dart';
import 'package:fla_tic/core/helpers/assets_keys.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/locale_keys.g.dart';
import '../../../core/theming/app_colors.dart';
import '../../../core/theming/app_text_styles.dart';
import 'app_search_bar.dart';

class LandingScreenHeadSection extends StatelessWidget {
  const LandingScreenHeadSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // SizedBox(
        //   width: 30,
        //   height: 30,
        //   child: Image.asset(AssetsKeys.appLogo)
        // ),
        SizedBox(
          child: Text(
            LocaleKeys.appName.tr(),
            style: AppTextStyles.headLineStyle,
          ),
        ),
        SizedBox(width: 8.w,),
        SizedBox(width: 60.w,),
        const Expanded(
          child: AppSearchBar(),
        ),
        SizedBox(width: 60.w,),
        SizedBox(
          child: IconButton(
            icon: const Icon(
              Icons.shopping_cart,
              color: AppColors.lightGreyWithShade,
            ),
            onPressed: () {},
          ),
        ),
        const SizedBox(
          child: VerticalDivider(
            width: 1,
            thickness: 1,
            color: AppColors.black,
          ),
        )
        ,
        SizedBox(
          child: IconButton(
            icon: const Icon(
              Icons.person,
              color: AppColors.lightGreyWithShade,
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
