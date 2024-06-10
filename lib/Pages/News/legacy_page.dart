import 'package:flutter/material.dart';
import 'package:forum/Widgets/app_bar_widget.dart';

class LegacyPage extends StatelessWidget {
  static const routeName = '/legacy-page';
  const LegacyPage({super.key});

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
                  'Самая большая и дорогая цифровая камера в мире​',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 50),
                const Text(
                  'Больше года назад мы публиковали материал о завершении работ по созданию самой большой камеры в мире, но что-то пошло не так и инженерам срочно пришлось вносить изменения в конструкцию. Камера Legacy Survey of Space and Time (LSST) стоимостью около 700 миллионов долларов (65 млрд. руб.) наконец построена и готова к отправке в обсерваторию Vera C. Rubin в Чили, где она будет делать 3200-мегапиксельные фотографии глубокого космоса и помогать ученым разгадать тайны Вселенной.',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 30),
                Image.asset('assets/legacy1.jpg'),
                const SizedBox(height: 30),
                const Text(
                  'Самая большая цифровая камера из когда-либо созданных, основана на точной мозаике из 201 специально разработанных датчиков CCD, расположенных на 21 «плоте». В совокупности эти устройства обеспечивают общее разрешение около 3,2 гигапикселя, или около 53 полнокадровых камер Sony a7R V. Массив датчиков настолько плоский, что его кривизна его поверхности составляет менее одной десятой толщины человеческого волоса.',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 30),
                Image.asset('assets/legacy2.jpg'),
                const SizedBox(height: 30),
                const Text(
                  'Фокальная плоскость не совсем прямоугольная, а скорее круглая. Её диаметр составляет 64 сантиметра. Между матрицей и объективом находится большой затвор и механизм смены фильтров.',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 30),
                Image.asset('assets/legacy3.jpg'),
                const SizedBox(height: 30),
                const Text(
                  'Хотя механизм смены фильтров может показаться не столь важным для наземных фотографов, для астрофотографии он имеет решающее значение. Различные материалы видны на разных длинах волн, поэтому съемка одного и того же участка ночного неба на разных электромагнитных частотах необходима для понимания того, что происходит в космосе. Механизм смены фильтров LSST особенно впечатляет, поскольку он может менять фильтры менее чем за 90 секунд — настоящий подвиг для такой массивной камеры.',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 30),
                Image.asset('assets/legacy4.jpg'),
                const SizedBox(height: 30),
                const Text(
                  'Телескоп будет работать в паре с главным зеркалом 8,4 метра и весом 16 284 кг. и вторичным зеркалом длиной 3,4 м. Всего телескоп вместе с камерой весит 62 тонны.\nОптический блок включает в себя три линзы, самая большая из которых имеет диаметр 1,57 метра, что делает ее крупнейшей в мире оптической линзой.',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 30),
                Image.asset('assets/legacy5.jpg'),
                const SizedBox(height: 30),
                const Text(
                  'Разрешающую способность камеры трудно себе представить. «Её изображения настолько детализированы, что позволяют досконально рассмотреть мяч для гольфа на расстоянии примерно 24км», — объясняет Аарон Рудман руководитель программы.\nКамера LSST вскоре будет отправлена из Калифорнии в Чили, где затем пройдет окончательную сборку и калибровку, чтобы пропустить первый космический свет через телескоп в начале 2025 года.',
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
