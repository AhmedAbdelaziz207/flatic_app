import 'package:flutter/material.dart';

class TResponsiveWidget extends StatelessWidget {
  const TResponsiveWidget({super.key, this.mobile, this.tablet, this.desktop});

  final Widget? mobile;

  final Widget? tablet;

  final Widget? desktop;

  @override
  Widget build(BuildContext context) {
    if (isDesktop(context) && desktop != null) {
      return desktop!;
    }  if (isTablet(context) && tablet != null) {
      return tablet!;
    }  if (isMobile(context) && mobile != null) {
      return mobile!;
    }  {
      return const Center(
        child: Text("No Design Found.!!!"),
      );
    }
  }

  bool isMobile(context) => MediaQuery.of(context).size.width <= 600;

  bool isTablet(context) =>
      MediaQuery.of(context).size.width > 600 &&
      MediaQuery.of(context).size.width <= 768;

  bool isDesktop(context) => MediaQuery.of(context).size.width > 768;
}
