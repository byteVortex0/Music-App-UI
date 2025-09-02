import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_app/core/utils/colors_manager.dart';
import 'package:music_app/core/utils/images_manager.dart';

import '../../../../core/utils/style_manager.dart';

class CustomBottomNav extends StatefulWidget {
  const CustomBottomNav({super.key});

  @override
  State<CustomBottomNav> createState() => _CustomBottomNavState();
}

class _CustomBottomNavState extends State<CustomBottomNav> {
  int selectedIndex = 0;

  //TODO: refactor
  final items = [
    {"icon": ImagesManager.home, "label": "الشاشة الرئيسية"},
    {"icon": ImagesManager.category, "label": "فئة"},
    {"icon": ImagesManager.settings, "label": "الضبط"},
    {"icon": ImagesManager.group, "label": "الملف الشخصي"},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30.h, left: 20.w, right: 20.w),
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(items.length, (index) {
          final item = items[index];
          final isSelected = selectedIndex == index;

          return Expanded(
            child: InkWell(
              borderRadius: BorderRadius.circular(16),
              onTap: () {},
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 8.h),
                decoration: BoxDecoration(
                  color:
                      isSelected
                          ? ColorsManager.primaryColor
                          : Colors.transparent,
                  borderRadius: BorderRadius.circular(16.r),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      item["icon"] as String,
                      width: 15.w,
                      height: 15.h,
                      color: isSelected ? Colors.white : ColorsManager.grey,
                    ),
                    SizedBox(height: 7.h),
                    Text(
                      item["label"] as String,
                      style:
                          isSelected
                              ? StyleManager.white10Bold
                              : StyleManager.gray10Regular,
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
