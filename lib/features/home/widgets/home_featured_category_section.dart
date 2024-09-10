import 'package:easy_localization/easy_localization.dart';
import 'package:fla_tic/core/helpers/locale_keys.g.dart';
import 'package:fla_tic/core/responsive/widgets/custom_scroll_behavior.dart';
import 'package:fla_tic/core/theming/app_text_styles.dart';
import 'package:fla_tic/core/widgets/rounded_button.dart';
import 'package:fla_tic/features/home/widgets/category_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeFeaturedCategorySection extends StatelessWidget {
  const HomeFeaturedCategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0.w),
      child: Column(
        children: [
          // Title and show details
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                LocaleKeys.featuredCategory.tr(),
                style: AppTextStyles.headLineStyle,
              ),
              RoundedButton(
                label: LocaleKeys.viewDetails.tr(),
                onPressed: () {},
                minimumSize: Size(80.w, 30.h),
              )
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          SizedBox(
            height: 180.h,
            width: double.infinity,
            child: ScrollConfiguration(
              behavior: MyCustomScrollBehavior(),
              child: ListView(
                controller: ScrollController(),
                scrollDirection: Axis.horizontal,
                children: const [
                  CategoryCard(
                    categoryTitle: "Phone",
                    icon: Icons.phone_android_outlined,
                  ),
                  CategoryCard(
                    categoryTitle: "Laptop",
                    icon: Icons.laptop,
                  ),

                  CategoryCard(
                    categoryTitle: "HeadPhone",
                    icon: Icons.headphones,
                  ),
                  CategoryCard(
                    categoryTitle: "Smart Watch",
                    icon: Icons.watch,
                  ),
                  CategoryCard(
                    categoryTitle: "Electronic Games",
                    icon: Icons.games,
                  ),
                  CategoryCard(
                    categoryTitle: "Laptop",
                    icon: Icons.laptop,
                  ),
                  CategoryCard(
                    categoryTitle: "HeadPhone",
                    icon: Icons.headphones,
                  ),
                  CategoryCard(
                    categoryTitle: "Smart Watch",
                    icon: Icons.watch,
                  ),
                  CategoryCard(
                    categoryTitle: "Electronic Games",
                    icon: Icons.games,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
