import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_app/core/common/custom_app_bar.dart';
import 'package:music_app/core/utils/colors_manager.dart';
import 'package:music_app/core/utils/style_manager.dart';
import 'package:music_app/features/add_song/ui/widgets/custom_text_form.dart';
import 'package:music_app/features/add_song/ui/widgets/uplaod_box.dart';

import '../../home/ui/widgets/custom_bottom_nav.dart';

class AddSongScreen extends StatelessWidget {
  const AddSongScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Form(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('إضافة اغنية جديدة', style: StyleManager.black16Bold),
                SizedBox(height: 5.h),
                Divider(color: ColorsManager.primaryColor, thickness: 2),
                SizedBox(height: 10.h),
                UplaodBox(),
                SizedBox(height: 10.h),
                CustomTextForm(label: 'اسم الاغنية', hint: 'الاسم'),
                SizedBox(height: 5.h),
                CustomTextForm(label: 'اسم المطرب', hint: 'الاسم'),
                SizedBox(height: 5.h),
                CustomTextForm(label: 'ترجمة النوبي', hint: 'نص', maxLines: 5),
                SizedBox(height: 5.h),
                CustomTextForm(label: 'ترجمة عربي', hint: 'نص', maxLines: 5),
                SizedBox(height: 20.h),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorsManager.primaryColor,
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(
                        vertical: 14.h,
                        horizontal: 24.w,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.r),
                      ),
                      elevation: 3,
                    ),
                    child: Text(
                      'حفظ',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Directionality(
        textDirection: TextDirection.ltr,
        child: CustomBottomNav(),
      ),
    );
  }
}
