import 'package:easy_localization/easy_localization.dart';
import 'package:fla_tic/app.dart';
import 'package:fla_tic/core/helpers/locale_keys.g.dart';
import 'package:fla_tic/core/responsive/widgets/responsive.dart';
import 'package:fla_tic/core/theming/app_colors.dart';
import 'package:fla_tic/core/theming/app_text_styles.dart';
import 'package:fla_tic/features/home/home_screen.dart';
import 'package:fla_tic/features/landing/widgets/app_search_bar.dart';
import 'package:fla_tic/features/landing/widgets/landing_screen_head_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/helpers/assets_keys.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.all(20.0),
              child: LandingScreenHeadSection(),
            ),
           HomeScreen()
          ],
        ),
      ),
    );
  }
}
