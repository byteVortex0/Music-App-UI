import 'package:flutter/widgets.dart';
import 'package:music_app/core/routes/base_routes.dart';
import 'package:music_app/features/home/ui/home_screen.dart';

import '../../features/add_song/ui/add_song_screen.dart';
import '../../features/songs/ui/songs_screen.dart';

class AppRoutes {
  static const String home = 'home';
  static const String songs = 'songs';
  static const String addSong = 'addSong';

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    // final args = settings.arguments;
    switch (settings.name) {
      case home:
        return BaseRoutes(page: HomeScreen());
      case songs:
        return BaseRoutes(page: SongsScreen());
      case addSong:
        return BaseRoutes(page: AddSongScreen());
      default:
        return null;
    }
  }
}
