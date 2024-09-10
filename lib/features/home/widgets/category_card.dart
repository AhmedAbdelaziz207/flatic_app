import 'package:fla_tic/core/theming/app_colors.dart';
import 'package:fla_tic/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.icon, required this.categoryTitle});
  /// Get Category From Api and set data
  // final Category category ;
  final IconData icon ;
  final String categoryTitle ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(8.0.sp),
      child: InkWell(
        onTap: () {

        },
        child: Container(
          height: 150,
          width: 150,
          padding: const EdgeInsetsDirectional.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(color: AppColors.lightGreyWithShade),
          ),
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  icon ,
                  color: AppColors.darkGreen,
                  size: 45.r,
                ),
                SizedBox(
                  height: 8.h,
                ),
                Expanded(
                  child: Text(
                    categoryTitle,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyles.headLineStyle.copyWith(fontSize:21),
                  ),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Expanded(
                  child: Text(
                    "8.9k products",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyles.hintStyle,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
