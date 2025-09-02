import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/style_manager.dart';

class CustomTextForm extends StatelessWidget {
  const CustomTextForm({
    super.key,
    required this.label,
    this.hint,
    this.maxLines,
    this.controller,
    this.validator,
  });

  final String label;
  final String? hint;
  final int? maxLines;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: StyleManager.black16Bold),
        SizedBox(height: 6.h),

        TextFormField(
          controller: controller,
          validator: validator,
          maxLines: maxLines ?? 1,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: StyleManager.lightGrey14Regular,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide(color: Colors.grey.shade400),
            ),
          ),
        ),
      ],
    );
  }
}
