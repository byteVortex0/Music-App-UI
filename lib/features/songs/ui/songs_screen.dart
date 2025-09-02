import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_app/core/common/custom_app_bar.dart';
import 'package:music_app/features/songs/ui/widgets/music_player.dart';

import '../../../core/utils/colors_manager.dart';
import '../../home/ui/widgets/custom_bottom_nav.dart';
import 'widgets/song_text.dart';

class SongsScreen extends StatelessWidget {
  const SongsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MusicPlayer(),
            SizedBox(height: 20.h),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  SongText(
                    color: ColorsManager.primaryColor,
                    textColor: Colors.white,
                    text: '''
                            ﺍﻳﻮﺓ ﺷﻤﻨﺪﻭﺭﺓ ﻣﻦ ﺟﻨﺎ ﺑﺎﺭﻯ ﺍﻧﺠﺲ
                            ﻛﺮﻳﻮ ﻣﻦ ﺟﻨﺎ
                            ﺳﺠﺮﻯ ﻣﺎﻻ ﻭﺍﻧﺎ ﻣﻮﻧﺖ ﺍﻧﺠﻼﺓ ﻭﺍﻧﺎ
                            ***
                            ﻉ ﺍﻟﺸﻂ ﺃﺳﺘﻨﻰ ... ﺭﺍﻳﺤﺔ ﻓﻴﻦ
                            ﺩﺍﻧﺎ ﻟﻴﻜﻰ ﺑﺎﻏﻨﻰ ﻏﻨﻮﺗﻴﻦ
                            ﻏﻨﻮﺓ ﻋﻦ ﺍﻵﻫﺔ ﻭﺍﻟﺤﻨﻴﻦ
                            ﻭﻏﻨﻮﺓ ﻟﻌﻨﻴﻜﻰ ﻳﺎﺣﻨﻴﻦ
                            ﺍﺓ ﻳﺎ ﺷﻤﻨﺪﻭﺭﺓ ﻻﺑﺴﺔ ﺗﻮﺏ
                            ﻳﺎ ﺍﺟﻤﻞ ﻣﻦ ﺍﻟﺼﻮﺭﺓ ﺩﻭﺏ ﻳﺎ ﺩﻭﺏ
                            ﻳﺎ ﺍﺳﻤﺮ ﻳﺎ ﺳﻤﺎﺭﺓ ﺩﻭﺑﺖ ﺩﻭﺏ
                            ﻳﺎ ﻋﻴﻮﻥ ﻗﺪﺍﺭﺓ ﻉ ﺍﻟﻘﻠﻮﺏ
                            ***
                            ﺍﻩ ﻳﺎ ﺷﻤﻨﺪﻭﺭﻩ ﺍﻟﺼﺒﺮ ﻃﺎﻝ
                            ﺭﺩﻯ ﻭ ﺟﺎﻭﺑﻴﻨﻰ ﻉ ﺍﻟﺴﺆﺍﻝ
                            ﺍﻃﻠﺒﻰ ﻭ ﺍﺗﻤﻨﻰ ﻟﻮ ﻣﺤﺎﻝ
                            ﻭﺩﻱ ﺗﺮﺟﻤﻪ ﺵﻤﻨﺪﻭﺭﺓ
                            ﺍﻳﻮﻭ ﺷﻤﻨﺪﻭﺭﺓ ﻣﻨﺠﻨﺎ .... ﻳﺎ
                            ﺷﻤﻨﺪﻭﺭﺓ ﻳﺎ ﻭﺍﻓﻘﻪ
                            ﺑﻬﺮ ﺟﺎﺳﻜﻮ ﻣﻴﻨﺠﻨﺎ ........ﻓﻲ ﻭﺳﻂ
                            ﺍﻟﺒﺤﺮ
                            ﺳﺠﺮﻱ ﻣﺎﻻ ﻭﺍﻳﻨﺎ ........ ﻭﺍﻟﻘﻮﺍﺭﺏ
                            ﺑﺘﺘﺪﻟﻊ ﺍﻭ ﺑﺘﺮﻓﺮﻑ ﺍﻟﻤﺮﻛﺐ ﺍﻟﺸﺮﺍﻋﻲ
                            ﻣﻮﺭﺗﻨﺎ ﻧﺎ ﻭﺍﻳﻨﺎ .... .. ﺑﺘﺮﻓﺮﻑ ﺍﻛﺘﺮ
                            ﻟﻤﺎ ﺗﻜﻮﻥ ﺟﻨﺒﻚ
                            ''',
                  ),

                  SizedBox(height: 10.h),

                  SongText(
                    color: Color(0xFFFFCC00),
                    textColor: Colors.black,
                    text: '''
                                  يا شمندورة يا وافقه
                                   في وسط البحر
                                  والقوارب بتتدلع او بترفرف المركب الشراعي
                                   بترفرف اكتر لما تكون جنبك
                                  مركب صيد صغيرة
                                  ﻉ ﺍﻟﺸﻂ ﺃﺳﺘﻨﻰ ... ﺭﺍﻳﺤﺔ ﻓﻴﻦ
                                  ﺩﺍﻧﺎ ﻟﻴﻜﻰ ﺑﺎﻏﻨﻰ ﻏﻨﻮﺗﻴﻦ
                                  ﻏﻨﻮﺓ ﻋﻦ ﺍﻵﻫﺔ ﻭﺍﻟﺤﻨﻴﻦ
                                  ﻭﻏﻨﻮﺓ ﻟﻌﻨﻴﻜﻰ ﻳﺎﺣﻨﻴﻦ
                                  ﺍﺓ ﻳﺎ ﺷﻤﻨﺪﻭﺭﺓ ﻻﺑﺴﺔ ﺗﻮﺏ
                                  ﻳﺎ ﺍﺟﻤﻞ ﻣﻦ ﺍﻟﺼﻮﺭﺓ ﺩﻭﺏ ﻳﺎ ﺩﻭﺏ
                                  ﻳﺎ ﺍﺳﻤﺮ ﻳﺎ ﺳﻤﺎﺭﺓ ﺩﻭﺑﺖ ﺩﻭﺏ
                                  ﻳﺎ ﻋﻴﻮﻥ ﻗﺪﺍﺭﺓ ﻉ ﺍﻟﻘﻠﻮﺏ
                                  ***
                                  ﺍﻩ ﻳﺎ ﺷﻤﻨﺪﻭﺭﻩ ﺍﻟﺼﺒﺮ ﻃﺎﻝ
                                  ﺭﺩﻯ ﻭ ﺟﺎﻭﺑﻴﻨﻰ ﻉ ﺍﻟﺴﺆﺍﻝ
                                  ﺍﻃﻠﺒﻰ ﻭ ﺍﺗﻤﻨﻰ ﻟﻮ ﻣﺤﺎﻝ
                                  ﻭﺩﻱ ﺗﺮﺟﻤﻪ ﺵﻤﻨﺪﻭﺭﺓ
                                  ﺍﻳﻮﻭ ﺷﻤﻨﺪﻭﺭﺓ ﻣﻨﺠﻨﺎ .... ﻳﺎ
                                  ﺷﻤﻨﺪﻭﺭﺓ ﻳﺎ ﻭﺍﻓﻘﻪ
                                  ﺑﻬﺮ ﺟﺎﺳﻜﻮ ﻣﻴﻨﺠﻨﺎ ........ﻓﻲ ﻭﺳﻂ
                                  ﺍﻟﺒﺤﺮ
                                  ﺳﺠﺮﻱ ﻣﺎﻻ ﻭﺍﻳﻨﺎ ........ ﻭﺍﻟﻘﻮﺍﺭﺏ
                                  ﺑﺘﺘﺪﻟﻊ ﺍﻭ ﺑﺘﺮﻓﺮﻑ ﺍﻟﻤﺮﻛﺐ ﺍﻟﺸﺮﺍﻋﻲ
                                  ﻣﻮﺭﺗﻨﺎ ﻧﺎ ﻭﺍﻳﻨﺎ .... .. ﺑﺘﺮﻓﺮﻑ ﺍﻛﺘﺮ
                                  ﻟﻤﺎ ﺗﻜﻮﻥ ﺟﻨﺒﻚ
                                  ''',
                  ),
                ],
              ),
            ),
            SizedBox(height: 40.h),
          ],
        ),
      ),

      bottomNavigationBar: Directionality(
        textDirection: TextDirection.ltr,
        child: CustomBottomNav(),
      ),
    );
  }
}
