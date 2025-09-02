import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/style_manager.dart';

class SongText extends StatelessWidget {
  const SongText({
    super.key,
    required this.color,
    required this.text,
    required this.textColor,
  });

  final Color color;
  final Color textColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),

      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Text(
        text.trimLeft().replaceAll(RegExp(r'^\s+', multiLine: true), ''),
        style: StyleManager.white16Bold.copyWith(color: textColor),
      ),
    );
  }
}
