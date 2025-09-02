import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_app/core/routes/app_routes.dart';
import 'package:music_app/core/utils/colors_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await ScreenUtil.ensureScreenSize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 878),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        title: 'Music App',
        debugShowCheckedModeBanner: false,
        locale: const Locale('ar'),
        supportedLocales: const [Locale('ar'), Locale('en')],
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        theme: ThemeData(
          fontFamily: "JFFlat",
          colorScheme: ColorScheme.fromSeed(
            seedColor: ColorsManager.primaryColor,
          ),
        ),
        onGenerateRoute: AppRoutes.onGenerateRoute,
        initialRoute: AppRoutes.home,
      ),
    );
  }
}
