import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/locale_keys.g.dart';
import '../../../core/theming/app_colors.dart';
import '../../../core/theming/app_text_styles.dart';
import '../../../core/widgets/gradient_button.dart';
import '../../../core/widgets/rounded_button.dart';

class HomeBestProductSection extends StatelessWidget {
  const HomeBestProductSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        Container(
          width: double.infinity,
          height: 600,
          color: AppColors.lightGrey,
        ),
        Padding(
          padding: const EdgeInsetsDirectional.only(start: 30.0, top: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .75,
                child: Text(
                  LocaleKeys.homeHeadLine.tr(),
                  style: AppTextStyles.headLineStyle.copyWith(fontSize: 40.sp),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .75,
                child: Text(
                  LocaleKeys.homeSubHeadLine.tr(),
                  style: AppTextStyles.subHeadLineStyle.copyWith(
                    color: AppColors.lightGreyWithShade,
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GradientButton(
                    label: LocaleKeys.buyNow.tr(),
                    onPressed: () {},
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  RoundedButton(
                    label: LocaleKeys.viewDetails.tr(),
                    onPressed: () {},
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
