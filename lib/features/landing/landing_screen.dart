import 'package:fla_tic/app.dart';
import 'package:fla_tic/core/responsive/widgets/responsive.dart';
import 'package:fla_tic/features/landing/widgets/landing_appbar_title.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const LandingScreenAppbarTitle(),
      ),
      body: const TResponsiveWidget(
        desktop: Center(
          child: Text("Desktop View "),
        ),
        mobile: Center(
          child: Text("Mobile View "),
        ),
        tablet: Center(
          child: Text("Table View "),
        ),
      ),
    );
  }
}
