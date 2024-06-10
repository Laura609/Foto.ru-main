import 'package:flutter/material.dart';
import 'package:forum/Pages/Forums/forum_page.dart';
import 'package:forum/Pages/News/art_page.dart';
import 'package:forum/Pages/News/legacy_page.dart';
import 'package:forum/Pages/News/vitrox_page.dart';
import 'package:forum/Pages/News/zhiyun_page.dart';
import 'package:forum/Widgets/app_bar_widget.dart';
import 'package:forum/Widgets/bottom_bar_widget.dart';
import 'package:forum/Widgets/home_card_widget.dart';
import 'package:forum/Widgets/home_photo_widget.dart';
import 'package:forum/Widgets/main_button_widget.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/home-page';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const AppBarWidget(text: 'Курсовая работа', isBack: false),
      ),
      backgroundColor: const Color.fromRGBO(43, 43, 43, 1),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 23),
            child: Column(
              children: <Widget>[
                const SizedBox(height: 30),
                const Row(
                  children: [
                    Text(
                      'Новости',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    HomeCardWidget(
                      modelHeight: 190,
                      modelWidth: 163,
                      modelColor: const Color.fromRGBO(43, 43, 43, 1),
                      modelImage: 'assets/11.jpg',
                      modelDescription:
                          'Недорогой APS-C объектив Viltrox 56mm f/1.7 Portrait Prime для Fujifilm X и Nikon Z',
                      onTap: () {
                        Navigator.of(context).pushNamed(VitroxPage.routeName);
                      },
                    ),
                    const SizedBox(width: 20),
                    HomeCardWidget(
                      modelHeight: 190,
                      modelWidth: 163,
                      modelColor: const Color.fromRGBO(43, 43, 43, 1),
                      modelImage: 'assets/zhiyun.jpg',
                      modelDescription:
                          'Новые светильники от Zhiyun​ - MOLUS B100 / B200 / B300 / B500 и G300​​',
                      onTap: () {
                        Navigator.of(context).pushNamed(ZhiyunPage.routeName);
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    HomeCardWidget(
                      modelHeight: 190,
                      modelWidth: 163,
                      modelColor: const Color.fromRGBO(43, 43, 43, 1),
                      modelImage: 'assets/legacy.jpg',
                      modelDescription:
                          'Самая большая и дорогая цифровая камера в мире',
                      onTap: () {
                        Navigator.of(context).pushNamed(LegacyPage.routeName);
                      },
                    ),
                    const SizedBox(width: 20),
                    HomeCardWidget(
                      modelHeight: 190,
                      modelWidth: 163,
                      modelColor: const Color.fromRGBO(43, 43, 43, 1),
                      modelImage: 'assets/morj.jpg',
                      modelDescription: 'Конкурс Ocean Art 2023',
                      onTap: () {
                        Navigator.of(context).pushNamed(ArtPage.routeName);
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                MainButtonWidget(
                  buttonName: "ФОРУМ",
                  buttonColor: const Color.fromRGBO(48, 127, 245, 1),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(13, 62, 185, 4),
                      spreadRadius: 0,
                      blurRadius: 5,
                      offset: Offset(0, 4),
                    ),
                  ],
                  onPressed: () {
                    Navigator.of(context).pushNamed(ForumPage.routeName);
                  },
                ),
                const SizedBox(height: 30),
                const Row(
                  children: [
                    Text(
                      'Лучшие фото',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const HomeWidgetPhoto(
                  modelHeight: 190,
                  modelWidth: double.infinity,
                  modelColor: Color.fromRGBO(43, 43, 43, 1),
                  imagePath: 'assets/7.jpg',
                  initialLikeCount: 163,
                ),
                const SizedBox(height: 20),
                const Row(
                  children: [
                    HomeWidgetPhoto(
                      modelHeight: 190,
                      modelWidth: 163,
                      modelColor: Color.fromRGBO(43, 43, 43, 1),
                      imagePath: 'assets/8.jpg',
                      initialLikeCount: 37,
                    ),
                    SizedBox(width: 20),
                    HomeWidgetPhoto(
                      modelHeight: 190,
                      modelWidth: 163,
                      modelColor: Color.fromRGBO(43, 43, 43, 1),
                      imagePath: 'assets/9.jpg',
                      initialLikeCount: 12,
                    ),
                  ],
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
