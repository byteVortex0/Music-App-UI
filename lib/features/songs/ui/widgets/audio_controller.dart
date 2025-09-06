import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:just_audio/just_audio.dart';

import '../../../../core/utils/colors_manager.dart';
import '../../../../core/utils/images_manager.dart';
import '../../../../core/utils/style_manager.dart';

class AudioController extends StatefulWidget {
  const AudioController({super.key});

  @override
  State<AudioController> createState() => _AudioControllerState();
}

class _AudioControllerState extends State<AudioController> {
  final audioUrl = "assets/song.mp3";

  final AudioPlayer _audioPlayer = AudioPlayer();

  String formatDuration(Duration duration) {
    final minutes = duration.inMinutes.remainder(60);
    final seconds = duration.inSeconds.remainder(60);
    return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }

  @override
  initState() {
    super.initState();
    _audioPlayer.setAsset(audioUrl);

    _audioPlayer.processingStateStream.listen((state) {
      if (state == ProcessingState.completed) {
        _audioPlayer.seek(Duration.zero);
        _audioPlayer.pause();
      }
    });
  }

  handlePlayPause() {
    if (_audioPlayer.playing) {
      _audioPlayer.pause();
    } else {
      _audioPlayer.play();
    }
  }

  handleseek(double value) {
    final position = Duration(seconds: value.toInt());
    _audioPlayer.seek(position);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Directionality(
          textDirection: TextDirection.ltr,
          child: StreamBuilder<Duration?>(
            stream: _audioPlayer.durationStream,
            builder: (context, durationSnapshot) {
              final duration = durationSnapshot.data ?? Duration.zero;

              return StreamBuilder<Duration>(
                stream: _audioPlayer.positionStream,
                builder: (context, positionSnapshot) {
                  final position = positionSnapshot.data ?? Duration.zero;
                  final sliderValue = position.inSeconds.toDouble();
                  final maxValue = duration.inSeconds.toDouble();

                  return Row(
                    children: [
                      Expanded(
                        child: SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            trackHeight: 10,
                            thumbShape: const RoundSliderThumbShape(
                              enabledThumbRadius: 13,
                            ),
                            activeTrackColor: Colors.white,
                            inactiveTrackColor: Colors.white.withValues(
                              alpha: 0.3,
                            ),
                            thumbColor: Colors.white,
                          ),
                          child: Slider(
                            min: 0,
                            max: maxValue > 0 ? maxValue : 1,
                            value: sliderValue.clamp(
                              0,
                              maxValue > 0 ? maxValue : 1,
                            ),
                            onChanged: (val) {
                              _audioPlayer.seek(Duration(seconds: val.toInt()));
                            },
                          ),
                        ),
                      ),
                      Text(
                        "-${formatDuration(duration - position)}",
                        style: StyleManager.white12Regular,
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ),
        SizedBox(height: 5.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.shuffle, color: Colors.white),
            ),
            GestureDetector(
              onTap: () {},
              child: Image.asset(
                ImagesManager.previous,
                width: 30.w,
                height: 30.h,
              ),
            ),
            CircleAvatar(
              radius: 25.r,
              backgroundColor: Colors.white,
              child: IconButton(
                onPressed: handlePlayPause,
                icon: StreamBuilder<bool>(
                  stream: _audioPlayer.playingStream,
                  builder: (context, snapshot) {
                    final isPlaying = snapshot.data ?? false;
                    return Icon(
                      isPlaying ? Icons.pause : Icons.play_arrow,
                      color: ColorsManager.primaryColor,
                      size: 30.sp,
                    );
                  },
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Image.asset(ImagesManager.next, width: 30.w, height: 30.h),
            ),
            GestureDetector(
              onTap: () {},
              child: Image.asset(
                ImagesManager.repeat,
                width: 30.w,
                height: 30.h,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
