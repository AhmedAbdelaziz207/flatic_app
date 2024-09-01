import 'package:easy_localization/easy_localization.dart';
import 'package:fla_tic/core/helpers/local_keys.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LandingScreenAppbarTitle extends StatelessWidget {
  const LandingScreenAppbarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Expanded(child: Text(LocalKeys.appName.tr(),style: TextStyle(
          fontSize: 50.sp
        ),))
      ],
    );
  }
}
