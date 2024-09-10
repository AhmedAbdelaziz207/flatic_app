import 'package:fla_tic/core/theming/app_colors.dart';
import 'package:fla_tic/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 180,
              width: 200,
              color: AppColors.lightGrey,
            ),
            Positioned(
              top: 5,
              right: 10,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite_border_outlined),
              ),
            ),
            Image.asset(
              'assets/images/phone.png',
              width: 100.w,
              height: 100.h,
            )
          ],
        ),
        SizedBox(
          width: 200,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  "IPhone 12 Pro Max s1 ",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.headLineStyle.copyWith(fontSize: 16),
                ),
              ),
              SizedBox(
                width: 12.w,
              ),
              Text(
                "\$120",
                style: AppTextStyles.headLineStyle.copyWith(
                    color: AppColors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              )
            ],
          ),
        ),
        Text(
          "North Purwokerto",
          style: AppTextStyles.hintStyle
              .copyWith(color: AppColors.lightGreyWithShade),
        ),
        SizedBox(
          height: 8.h,
        ),
        SizedBox(
          width: 200,
          child: Row(
            children: [
              const Icon(
                Icons.star,
                color: AppColors.orange,
              ),
              SizedBox(
                width: 6.w,
              ),
              const Text(
                "4.7",
                style: TextStyle(
                    color: AppColors.darkGrey,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 16.w,
              ),
              const Text("1,440 Sold",
                  style: TextStyle(
                      color: AppColors.darkGrey,
                      fontSize: 12,
                      fontWeight: FontWeight.normal))
            ],
          ),
        )
      ],
    );
  }
}
