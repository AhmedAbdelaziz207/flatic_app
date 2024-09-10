import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/app_colors.dart';
import '../theming/app_text_styles.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.minimumSize,
  });

  final String label;
  final Size? minimumSize;

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8.r)),
          gradient: const LinearGradient(
            colors: [
              AppColors.darkGreen, // Very dark green (left)
              AppColors.darkGreenWithLightShade, // Even darker green (right)
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          )),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
            shape: const RoundedRectangleBorder(),
            minimumSize: minimumSize ?? Size(120.w, 40.h),
            foregroundColor: AppColors.lightGrey),
        child: Text(
          label,
          style: AppTextStyles.button,
        ),
      ),
    );
  }
}
