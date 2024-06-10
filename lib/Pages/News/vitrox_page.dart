import 'package:flutter/material.dart';
import 'package:forum/Widgets/app_bar_widget.dart';

class VitroxPage extends StatelessWidget {
  static const routeName = '/vitrox-page';
  const VitroxPage({super.key});

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
                  'Недорогой APS-C объектив Viltrox 56mm f/1.7 Portrait Prime для Fujifilm X и Nikon Z',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 50),
                const Text(
                  'Viltrox, известный китайский производитель объективов, представил новый портретный объектив. Это компактный объектив с фиксированным фокусным расстоянием 56 мм и диафрагмой f/1,7, разработанный специально для беззеркальных камер формата APS-C Fujifilm серии X и Nikon Z.',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 30),
                Image.asset('assets/viltrox1.jpg'),
                const SizedBox(height: 30),
                const Text(
                  'Этот объектив обещает быструю, точную и тихую автофокусировку благодаря мотору STM. Он оснащен 11 элементами в девяти группах, включая четыре линзы ED и три линзы из стекла с высоким показателем преломления. Он может фокусироваться на расстоянии от 0,55 метра, что обеспечивает максимальное увеличение 0,11x. Объектив имеет внутреннюю фокусировку, то есть его длина не меняется в зависимости от фокусировки.',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 30),
                Image.asset('assets/viltrox2.jpg'),
                const SizedBox(height: 30),
                const Text(
                  'Говоря о размере, объектив относительно компактен, учитывая сочетание фокусного расстояния и диафрагмы. Объектив имеет длину 54,7 мм и резьбу под фильтр 52 мм. Вес немного варьируется в зависимости от выбранного крепления объектива: версия с байонетом X весит всего 171 грамм (шесть унций), а версия Z весит 187 граммов.',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 30),
                Image.asset('assets/vitrox3.jpg'),
                const SizedBox(height: 30),
                const Text(
                  'Объектив имеет порт USB-C, позволяющий пользователям легко обновлять прошивку объектив. Viltrox обещает минимизированное "дыхание" при фокусировке для видео, низкий уровень оптических искажений и мягкое боке.',
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
