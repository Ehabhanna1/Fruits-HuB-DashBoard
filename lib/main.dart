import 'package:flutter/material.dart';
import 'package:fruits_hub_dashboard/core/helper_function/routing/on_generate_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fruits HuB Dashboard',
      onGenerateRoute: onGenerateRoute,
    );
  }
}

