import 'package:flutter/material.dart';
import 'package:fruits_hub_dashboard/core/utils/app_text.dart';
import 'package:fruits_hub_dashboard/features/add_product/presentation/view/widgets/custom_check_box.dart';


class IsFeaturedCheckBox extends StatefulWidget {
  const IsFeaturedCheckBox({super.key, required this.onChanged});

  final ValueChanged<bool> onChanged;

  @override
  State<IsFeaturedCheckBox> createState() => _IsFeaturedCheckBoxState();
}

class _IsFeaturedCheckBoxState extends State<IsFeaturedCheckBox> {


  bool isTermsAccepted = false;



  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBox(
          onChecked: (value) {
           isTermsAccepted = value;
           widget.onChanged(value);
            setState(() {});
          },
         isChecked: isTermsAccepted,
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'is Featured Item ?',
                  style: TextStyles.semiBold15.copyWith(
                    color: const Color(0xFF949D9E),
                  ),
                ),
                
              ],
            ),
            textAlign: TextAlign.right,
          ),
        )
      ],
    );
  }
}