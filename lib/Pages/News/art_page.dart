import 'package:flutter/material.dart';
import 'package:forum/Widgets/app_bar_widget.dart';

class ArtPage extends StatelessWidget {
  static const routeName = '/art-page';
  const ArtPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const AppBarWidget(text: 'Курсовая работа', isBack: true),
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
                const Text(
                  'Конкурс Ocean Art 2023​',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 50),
                const Text(
                  'Конкурс Ocean Art 2023',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 30),
                Image.asset('assets/octopus.jpg'),
                const SizedBox(height: 30),
                Image.asset('assets/art2.jpg'),
                const SizedBox(height: 30),
                Image.asset('assets/art3.jpg'),
                const SizedBox(height: 30),
                Image.asset('assets/art4.jpg'),
                const SizedBox(height: 30),
                Image.asset('assets/art5.jpg'),
                const SizedBox(height: 30),
                Image.asset('assets/art6.jpg'),
                const SizedBox(height: 30),
                Image.asset('assets/art7.jpg'),
                const SizedBox(height: 30),
                Image.asset('assets/art8.jpg'),
                const SizedBox(height: 30),
                Image.asset('assets/art9.jpg'),
                const SizedBox(height: 30),
                Image.asset('assets/art10.jpg'),
                const SizedBox(height: 30),
                Image.asset('assets/art11.jpg'),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
