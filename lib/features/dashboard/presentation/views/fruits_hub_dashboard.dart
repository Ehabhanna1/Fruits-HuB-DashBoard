import 'package:flutter/material.dart';
import 'package:fruits_hub_dashboard/features/dashboard/presentation/views/widgets/dashboard_view_body.dart';

class FruitsHubDashboard extends StatelessWidget {
  const FruitsHubDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fruits Hub Dashboard'),
      ),
      body: const DashboardViewBody(),
    );
  }
}