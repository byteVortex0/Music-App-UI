import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_app/core/common/custom_app_bar.dart';
import 'package:music_app/core/extensions/context_extension.dart';
import 'package:music_app/core/routes/app_routes.dart';
import 'package:music_app/core/utils/colors_manager.dart';
import 'package:music_app/core/utils/style_manager.dart';
import 'package:music_app/features/home/ui/widgets/custom_bottom_nav.dart';
import 'package:music_app/features/home/ui/widgets/section_favorite.dart';
import 'package:music_app/features/home/ui/widgets/section_header.dart';
import 'package:music_app/features/home/ui/widgets/section_listen.dart';
import 'package:music_app/features/home/ui/widgets/section_songer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SectionHeader(
                title: 'إضافة اغنية جديدة',
                action: CircleAvatar(
                  radius: 20.r,
                  backgroundColor: ColorsManager.primaryColor,
                  child: IconButton(
                    icon: const Icon(Icons.add),
                    color: Colors.white,
                    onPressed: () {
                      context.pushNamed(AppRoutes.addSong);
                    },
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              Text('مواصلة الاستماع', style: StyleManager.black16Bold),

              SizedBox(height: 5.h),

              SectionListen(),

              SizedBox(height: 20.h),

              SectionHeader(title: 'اشهر المطربين'),

              SizedBox(height: 5.h),

              SectionSonger(),

              SizedBox(height: 20.h),

              SectionHeader(title: 'المفضلة'),

              SizedBox(height: 5.h),
              SectionFavorite(),

              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Directionality(
        textDirection: TextDirection.ltr,
        child: CustomBottomNav(),
      ),
      // extendBody: true,
    );
  }
}
