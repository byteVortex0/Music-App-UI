import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_app/core/utils/style_manager.dart';

import '../../../../core/utils/images_manager.dart';

class UplaodBox extends StatelessWidget {
  const UplaodBox({super.key});

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: Radius.circular(12.r),
      dashPattern: [6, 3],
      color: Colors.grey,
      strokeWidth: 2,
      child: Container(
        height: 120.h,
        width: double.infinity,
        alignment: Alignment.center,
        padding: EdgeInsets.all(12.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(ImagesManager.upload, width: 32.w, height: 32.h),
            SizedBox(height: 8.h),
            Text('رفع ملف', style: StyleManager.indigo14Bold),
            SizedBox(height: 4.h),
            Text(
              'يجب ان تكون الملفات بالصيغ الاتية .mp3 .mp4 .',
              style: StyleManager.gray12Regular,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
