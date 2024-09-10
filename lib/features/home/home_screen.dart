import 'package:easy_localization/easy_localization.dart';
import 'package:fla_tic/core/helpers/assets_keys.dart';
import 'package:fla_tic/core/helpers/locale_keys.g.dart';
import 'package:fla_tic/core/theming/app_colors.dart';
import 'package:fla_tic/core/theming/app_text_styles.dart';
import 'package:fla_tic/core/widgets/gradient_button.dart';
import 'package:fla_tic/core/widgets/rounded_button.dart';
import 'package:fla_tic/features/home/widgets/home_best_product_section.dart';
import 'package:fla_tic/features/home/widgets/home_featured_category_section.dart';
import 'package:fla_tic/features/home/widgets/home_products_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
       const HomeBestProductSection(),
       SizedBox(height: 20.h,),
       const HomeFeaturedCategorySection(),
        SizedBox(height: 20.h,),
        const HomeProductsSection()
      ],
    );
  }
}
