import 'package:flutter/material.dart';
import 'package:fruits_hub_dashboard/core/helper_function/routing/app_routes.dart';
import 'package:fruits_hub_dashboard/features/add_product/presentation/view/add_product_view.dart';
import 'package:fruits_hub_dashboard/features/dashboard/presentation/views/fruits_hub_dashboard.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.fruitsHubDashboard:
      return MaterialPageRoute(
        builder: (context) => const FruitsHubDashboard(),
      );
    case AppRoutes.addProduct:
      return MaterialPageRoute(builder: (context) => const AddProductView());
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
