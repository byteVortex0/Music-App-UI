import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_app/core/utils/colors_manager.dart';

import '../../../../core/utils/images_manager.dart';
import '../../../../core/utils/style_manager.dart';

class ListenItem extends StatelessWidget {
  const ListenItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 5.w),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.1),
                  blurRadius: 6,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Stack(
              children: [
                Image.asset(
                  ImagesManager.listen,
                  height: double.infinity,
                  width: 150.w,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 12,
                    ),
                    color: Colors.black.withValues(alpha: 0.5),
                    child: Text(
                      "حسن عبدالمجيد",
                      style: StyleManager.white12Bold,
                    ),
                  ),
                ),
              ],
            ),
          ),

          Positioned(
            left: 0.w,
            right: 0.w,
            bottom: 0.h,
            child: Container(
              height: 10.h,
              decoration: BoxDecoration(
                color: ColorsManager.purple,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16.r),
                  bottomRight: Radius.circular(16.r),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
