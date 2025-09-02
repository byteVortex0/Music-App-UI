import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_app/core/extensions/context_extension.dart';
import 'package:music_app/core/utils/images_manager.dart';
import 'package:music_app/core/utils/style_manager.dart';

import '../utils/colors_manager.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("مرحبا بك", style: StyleManager.white16Bold),
          Text(
            "احمد محمد",
            style: StyleManager.white16Bold.copyWith(
              color: ColorsManager.white.withValues(alpha: 0.5),
            ),
          ),
        ],
      ),
      backgroundColor: ColorsManager.primaryColor,
      leading: Container(
        margin: EdgeInsets.only(right: 10.w),
        child: CircleAvatar(
          radius: 20.r,
          backgroundImage: const AssetImage(ImagesManager.profile),
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {},
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset(ImagesManager.bell, width: 20.w, height: 20.h),
              Positioned(
                top: 0,
                left: 1,
                child: Container(
                  width: 8.w,
                  height: 8.w,
                  decoration: BoxDecoration(
                    color: ColorsManager.pink,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),
        ),

        SizedBox(width: 10.w),
        GestureDetector(
          onTap: () {
            Navigator.canPop(context) ? context.pop() : null;
          },
          child: Image.asset(ImagesManager.iconBack, width: 20.w, height: 20.h),
        ),
        SizedBox(width: 10.w),
      ],
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(65.h);
}
