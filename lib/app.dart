import 'package:easy_localization/easy_localization.dart';
import 'package:fla_tic/core/theming/dark_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/theming/light_theme.dart';
import 'features/landing/landing_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(900, 560),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_ , child) {
        return MaterialApp(
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          debugShowCheckedModeBanner: false,
          theme: lightTheme,
          themeMode: ThemeMode.light,
          darkTheme: darkTheme,
          home: child,
        );
      },
      child: const LandingScreen(),
    );
  }
}
