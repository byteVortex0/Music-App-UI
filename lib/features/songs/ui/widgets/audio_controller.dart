import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:just_audio/just_audio.dart';

import '../../../../core/utils/colors_manager.dart';
import '../../../../core/utils/images_manager.dart';

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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.shuffle, color: Colors.white),
        ),
        GestureDetector(
          onTap: () {},
          child: Image.asset(ImagesManager.previous, width: 30.w, height: 30.h),
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
          child: Image.asset(ImagesManager.repeat, width: 30.w, height: 30.h),
        ),
      ],
    );
  }
}
