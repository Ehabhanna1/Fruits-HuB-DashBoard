import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub_dashboard/core/helper_function/routing/app_routes.dart';
import 'package:fruits_hub_dashboard/core/helper_function/routing/on_generate_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Fruits HuB Dashboard',
        initialRoute: AppRoutes.fruitsHubDashboard,
        onGenerateRoute: onGenerateRoute,
      ),
    );
  }
}

