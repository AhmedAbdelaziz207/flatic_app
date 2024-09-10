import 'package:easy_localization/easy_localization.dart';
import 'package:fla_tic/core/helpers/locale_keys.g.dart';
import 'package:fla_tic/core/responsive/widgets/custom_scroll_behavior.dart';
import 'package:fla_tic/core/responsive/widgets/product_card.dart';
import 'package:fla_tic/core/theming/app_text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeProductsSection extends StatelessWidget {
  const HomeProductsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(20.0.sp),
      child: Column(
        children: [
          Text(
            LocaleKeys.popularProducts.tr(),
            style: AppTextStyles.headLineStyle.copyWith(fontSize: 24.sp),
          ),
          SizedBox(height: 20.h,),
          SizedBox(
            width: double.infinity,
            height: 280,
            child: ScrollConfiguration(
              behavior: MyCustomScrollBehavior(),
              child: ListView.separated(
                controller: ScrollController(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const ProductCard();
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    width: 8,
                  );
                },
                itemCount: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
