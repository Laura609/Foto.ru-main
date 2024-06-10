import 'package:flutter/material.dart';
import 'package:forum/Widgets/app_bar_widget.dart';

class ZhiyunPage extends StatelessWidget {
  static const routeName = '/zhiyun-page';
  const ZhiyunPage({super.key});

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
                  'Новые светильники от Zhiyun​ - MOLUS B100 / B200 / B300 / B500 и G300​​',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 50),
                const Text(
                  'Компания Zhiyun, известный производитель стабилизаторов представляет серию новых светодиодных источников света.\nИсточники света ZHIYUN MOLUS - компактное решение для съемки со встроенным блоком питания. Цветовая температура регулируется от 2700К до 6500К. CRI ≥95 и TLCI ≥96.\nНовая система охлаждения DynaVort Cooling System™ Mk V позволяет эффективно убирать вихревые потоки, повышая эффективность охлаждения и уменьшая шум.\nБайонет Bowens, обеспечивает установку различных светоформирующих насадок.',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 30),
                Image.asset('assets/zhiyun1.jpg'),
                const SizedBox(height: 30),
                const Text(
                  'Источники света ZHIYUN MOLUS серии B могут управляться тремя способами: через приложение ZY Vega APP, нажатием управляющих колес на корпусе и проводным пультом управления K1 Controller.',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 30),
                Image.asset('assets/zhiyun2.jpg'),
                const SizedBox(height: 30),
                const Text(
                  'Новый источник света G300 от Zhiyun – это сочетание легкости и мощности. Этот источник мощностью 300 Вт помещается на ладони, но при этом способен перейти в режим MAX Extreme с мощностью 500 Вт одним нажатием кнопки.',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 30),
                Image.asset('assets/zhiyun3.jpg'),
                const SizedBox(height: 30),
                const Text(
                  'Источники света ZHIYUN подходят для разных съемочных сценариев, включая прямые трансляции, интервью, портреты, рекламу и телевизионные съемки.\nСкоро в продаже у авторизованных дилеров.',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
