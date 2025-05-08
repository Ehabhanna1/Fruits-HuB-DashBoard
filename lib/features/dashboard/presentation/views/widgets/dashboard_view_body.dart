import 'package:flutter/material.dart';
import 'package:fruits_hub_dashboard/core/helper_function/routing/app_routes.dart';
import 'package:fruits_hub_dashboard/core/widgets/custom_buttom.dart';

class DashboardViewBody extends StatelessWidget {
  const DashboardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.addProduct);
            },
            text: 'Add New Fruit',
          ),
        ],
      ),
    );
  }
}
