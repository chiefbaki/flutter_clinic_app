import 'package:flutter/material.dart';
import 'package:flutter_application_6/presentation/splash_screen.dart';
import 'package:flutter_application_6/presentation/theme/app_colors.dart';
import 'package:flutter_application_6/presentation/widgets/shared_prefs.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 667),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: false,
            scaffoldBackgroundColor: AppColors.bgColor,
            appBarTheme: const AppBarTheme(
              elevation: 0.5,
              backgroundColor: AppColors.bgColor,
            )),
        home: SharedPref(child: const SplashScreen()),
      ),
    );
  }
}