import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/images_manager.dart';
import '../../../../core/utils/style_manager.dart';

class SongerItem extends StatelessWidget {
  const SongerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      width: 120.w,
      margin: EdgeInsets.symmetric(vertical: 5.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 25.r,
            backgroundImage: AssetImage(ImagesManager.songer),
          ),
          SizedBox(height: 8.h),
          Text('محمد منير', style: StyleManager.black14Bold),
        ],
      ),
    );
  }
}
