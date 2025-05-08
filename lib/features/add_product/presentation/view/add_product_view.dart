import 'package:flutter/material.dart';
import 'package:fruits_hub_dashboard/features/add_product/presentation/view/widgets/add_product_view_body.dart';

class AddProductView extends StatelessWidget {
  const AddProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const AddProductViewBody(),
    );
  }
}