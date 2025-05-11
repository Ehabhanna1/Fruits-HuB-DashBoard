import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fruits_hub_dashboard/core/widgets/custom_buttom.dart';
import 'package:fruits_hub_dashboard/core/widgets/custom_text_form_field.dart';
import 'package:fruits_hub_dashboard/features/add_product/domain/entities/add_product_input_entity.dart';
import 'package:fruits_hub_dashboard/features/add_product/presentation/view/widgets/image_field.dart';
import 'package:fruits_hub_dashboard/features/add_product/presentation/view/widgets/is_featured_check_box.dart';

class AddProductViewBody extends StatefulWidget {
  const AddProductViewBody({super.key});

  @override
  State<AddProductViewBody> createState() => _AddProductViewBodyState();
}

class _AddProductViewBodyState extends State<AddProductViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

 late String name , code, description;
 late num price;
  bool isFeatured = false;
  File? image;



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
              CustomTextFormField(
               
                onSaved: (value){
                  name = value!;
                },
                hintText: 'Product Name', keyboardType: TextInputType.text),
              SizedBox(height: 16,),
              
              CustomTextFormField(
                onSaved: (value){
                  price = num.parse(value!);
                },
                hintText: 'Product Price', keyboardType: TextInputType.number),
              SizedBox(height: 16,),
              CustomTextFormField(
                onSaved: (value){
                  code = value!.toLowerCase();
                },
                hintText: 'Product Code', keyboardType: TextInputType.number),
              SizedBox(height: 16,),
              CustomTextFormField(
                onSaved: (value){
                  description = value!;
                },
                hintText: 'Product Description', keyboardType: TextInputType.text,maxLines: 5,),
              SizedBox(height: 16,),
                 IsFeaturedCheckBox(
                onChanged: (value){
                isFeatured = value;
               // setState(() {});
              },),
              SizedBox(height: 20,),
              ImageField(
                onFileChanged: (image){
                image = image!;
                setState(() {});
              }),

              SizedBox(height: 25,),

              CustomButton(
                onPressed: (){
                  if (image != null){
                    if (formKey.currentState!.validate()) {
                       formKey.currentState!.save();
                       AddProductInputEntity input = AddProductInputEntity(
                        productName: name,
                        price: price,
                        code: code,
                        description: description,
                        isFeatured: isFeatured,
                        image: image!,
                       );
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                    

                    
                  }else{
                    showError(context);
                  }

              },
               text: 'Add Product'),

              SizedBox(height: 32,),
              
           
        
        
        
            ],
          ),
          ),
      ),
    );
  }
  
  void showError(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Please add an image')),
    );
  }
}
