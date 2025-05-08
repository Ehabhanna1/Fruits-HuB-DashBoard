import 'package:flutter/material.dart';
import 'package:fruits_hub_dashboard/core/widgets/custom_text_form_field.dart';

class AddProductViewBody extends StatefulWidget {
  const AddProductViewBody({super.key});

  @override
  State<AddProductViewBody> createState() => _AddProductViewBodyState();
}

class _AddProductViewBodyState extends State<AddProductViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              CustomTextFormField(hintText: 'Product Name', keyboardType: TextInputType.text),
              SizedBox(height: 16,),
              
              CustomTextFormField(hintText: 'Product Price', keyboardType: TextInputType.number),
              SizedBox(height: 16,),
              CustomTextFormField(hintText: 'Product Code', keyboardType: TextInputType.number),
              SizedBox(height: 16,),
              CustomTextFormField(hintText: 'Product Discription', keyboardType: TextInputType.text,maxLines: 5,),
              
        
        
        
        
            ],
          ),
          ),
      ),
    );
  }
}
