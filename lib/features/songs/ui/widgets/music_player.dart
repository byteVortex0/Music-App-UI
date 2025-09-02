import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_app/core/utils/images_manager.dart';

import '../../../../core/utils/style_manager.dart';

class MusicPlayer extends StatefulWidget {
  const MusicPlayer({super.key});

  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          ImagesManager.mediaPlayer,
          width: double.infinity,
          height: 400.h,
          fit: BoxFit.cover,
        ),

        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.r),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.2),
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('شمندورة', style: StyleManager.white16Bold),
                            Text(
                              'محمد منير',
                              style: StyleManager.white14Regular,
                            ),
                          ],
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.favorite_border, color: Colors.red),
                        ),
                        SizedBox(width: 10.w),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.share_outlined, color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),

                    Directionality(
                      textDirection: TextDirection.ltr,
                      child: Row(
                        children: [
                          Expanded(
                            child: SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                trackHeight: 5,
                                thumbShape: const RoundSliderThumbShape(
                                  enabledThumbRadius: 6,
                                ),
                                activeTrackColor: Colors.white,
                                inactiveTrackColor: Colors.white.withValues(
                                  alpha: 0.3,
                                ),
                                thumbColor: Colors.white,
                              ),
                              child: Slider(value: 0, onChanged: (val) {}),
                            ),
                          ),
                          Text('-1:40', style: StyleManager.white12Regular),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.h),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
