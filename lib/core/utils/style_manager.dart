import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_app/core/utils/colors_manager.dart';
import 'package:music_app/core/utils/font_weight_helper.dart';

class StyleManager {
  static TextStyle white16Bold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.bold,
    color: ColorsManager.white,
  );

  static TextStyle black16Bold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.black,
  );

  static TextStyle indigo12Regular = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.primaryColor,
    decoration: TextDecoration.underline,
  );

  static TextStyle white12Bold = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.bold,
    color: ColorsManager.white,
  );

  static TextStyle white12Regular = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.white,
  );

  static TextStyle white14Regular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.white,
  );

  static TextStyle black14Bold = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.black,
  );

  static TextStyle indigo14Bold = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.bold,
    color: ColorsManager.primaryColor,
  );

  static TextStyle gray12Regular = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.grey,
  );

  static TextStyle gray10Regular = TextStyle(
    fontSize: 10.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.grey,
  );

  static TextStyle lightGrey14Regular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.lightGrey,
  );

  static TextStyle blueGray10Regular = TextStyle(
    fontSize: 10.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.blueGrey,
  );

  static TextStyle white10Bold = TextStyle(
    fontSize: 10.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.white,
  );
}
