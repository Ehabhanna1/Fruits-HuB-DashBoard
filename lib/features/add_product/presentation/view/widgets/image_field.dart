import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fruits_hub_dashboard/core/utils/app_colors.dart';
import 'package:image_picker/image_picker.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ImageField extends StatefulWidget {
  const ImageField({super.key, required this.onFileChanged});


  final ValueChanged<File?> onFileChanged;

  @override
  State<ImageField> createState() => _ImageFieldState();
}

class _ImageFieldState extends State<ImageField> {
  bool isLoading = false;

  File? fileImage;

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: isLoading,
      child: GestureDetector(
        onTap: () async {
          isLoading = true;
          setState(() {});
          try {
            await pickImage();
          } catch (e) {
            isLoading = false;
            setState(() {});
          }
          isLoading = false;
          setState(() {});
        },
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(16),
              ),
              child: fileImage == null ? Icon(
                Icons.image_outlined,
                size: 180,
                color: AppColors.lightPrimaryColor,
              ) : ClipRRect(borderRadius: BorderRadius.circular(16), child: Image.file(fileImage!)),
            ),

            Visibility(
              visible: fileImage != null,
              child: IconButton(onPressed: (){
                fileImage = null;
                widget.onFileChanged(null);
                setState(() {});
              },
               icon: Icon(Icons.delete,color: Colors.red,size: 35,)),
            )
          ],
        ),
      ),
    );
  }

  Future<void> pickImage() async {
    final ImagePicker picker = ImagePicker();
    // Pick an image.
    final XFile? image = await picker.pickImage(
      source: ImageSource.gallery,
    );
    fileImage = File(image!.path);

    widget.onFileChanged(fileImage);
  }
}
