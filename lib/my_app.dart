import 'package:flutter/material.dart';
import 'package:forum/Pages/Forums/forum_page.dart';
import 'package:forum/Pages/News/art_page.dart';
import 'package:forum/Pages/News/legacy_page.dart';
import 'package:forum/Pages/News/vitrox_page.dart';
import 'package:forum/Pages/News/zhiyun_page.dart';
import 'package:forum/Pages/home_page.dart';
import 'package:forum/Pages/profile_page.dart';
import 'package:forum/Pages/splash_page.dart';
import 'package:forum/constants/constants.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Курсовая работа | Автор - Метниеце Л.',
      theme: appTheme,
      home: const SplashPage(),
      routes: {
        HomePage.routeName: (context) => const HomePage(),
        ForumPage.routeName:(context) => const ForumPage(),
        ProfilePage.routeName: (context) => const ProfilePage(),
        VitroxPage.routeName: (context) => const VitroxPage(),
        ZhiyunPage.routeName: (context) => const ZhiyunPage(),
        LegacyPage.routeName: (context) => const LegacyPage(),
        ArtPage.routeName: (context) => const ArtPage(),
      },
    );
  }
}