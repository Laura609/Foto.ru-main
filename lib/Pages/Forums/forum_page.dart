import 'package:flutter/material.dart';
import 'package:forum/Pages/Forums/forum_message_page.dart';
import 'package:forum/Widgets/Forums/forum_topic_widget.dart';
import 'package:forum/Widgets/app_bar_widget.dart';
import 'package:forum/Widgets/bottom_bar_widget.dart';

class ForumPage extends StatelessWidget {
  static const routeName = '/forum-page';
  const ForumPage({super.key});

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
                const Row(
                  children: [
                    Text(
                      'Темы:',
                      style: TextStyle(
                          color: Color.fromRGBO(246, 246, 246, 1),
                          fontSize: 16),
                    ),
                    
                  ],
                ),
                const SizedBox(height: 30),

                ForumTopicWidget(
                  userPhotoUrl: '',
                  topicTitle:
                      'Обсуждение фотографий',
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ForumTopicDetailsWidget(
                        userPhotoUrl: 'https://example.com/user_photo.jpg',
                        topicTitle:
                            'Обсуждение фотографий',
                        topicDetails: 'Все фото направленные в раздел форума "Обсуждение фотографий" подлежат обсуждению. Добро пожаловать в добрую и объективную)',
                      ),
                    ));
                  },
                ),
                const SizedBox(height: 20),

                ForumTopicWidget(
                  userPhotoUrl: '',
                  topicTitle:
                      'Зачем мы фотографируем? Ответы с советами :)',
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ForumTopicDetailsWidget(
                        userPhotoUrl: 'https://example.com/user_photo.jpg',
                        topicTitle:
                            'Зачем мы фотографируем? Ответы с советами :)',
                        topicDetails: 'На фотору множество фотографов со своим путем в фотографии, своим отношением к фотографии) Желающим предлагается высказать на тему: Зачем вы фотографируете? Какие фотографии считаете хорошими? ыКакие советы можете дать коллегам по тому направлению фотографии, которым занимаетесь?',
                      ),
                    ));
                  },
                ),
                const SizedBox(height: 20),
                
                ForumTopicWidget(
                  userPhotoUrl: '',
                  topicTitle: 'Выразительный язык фотографии',
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ForumTopicDetailsWidget(
                        userPhotoUrl: 'https://example.com/user_photo.jpg',
                        topicTitle: 'Выразительный язык фотографии',
                        topicDetails: 'Доброго времени суток. Часто встречаю упоминания о том, что у фотографии уже полвека как сформировался собственный выразительный язык, отличный от выразительного языка живописи. Это упоминается как общее место, как нечто общеизвестное и потому не расшифровывается. Кто-то может пояснить не слишком пространно, что такое выразительный язык фотографии или подсказать, что можно почитать по этой теме?',
                      ),
                    ));
                  },
                ),
                const SizedBox(height: 20),
                ForumTopicWidget(
                  userPhotoUrl: '',
                  topicTitle: 'Настройки фотокамеры',
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ForumTopicDetailsWidget(
                        userPhotoUrl: 'https://example.com/user_photo.jpg',
                        topicTitle: 'Настройки фотокамеры',
                        topicDetails: 'Частенько снимаю AV и M с avto ISO. При установке на камеру синхронизатора Godox X2T avto ISO перестает работать. Подскажите как настроить?',
                      ),
                    ));
                  },
                ),
                const SizedBox(height: 20),
                ForumTopicWidget(
                  userPhotoUrl: '',
                  topicTitle: 'Где вы ищете клиентов?',
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ForumTopicDetailsWidget(
                        userPhotoUrl: 'https://example.com/user_photo.jpg',
                        topicTitle: 'Где вы ищете клиентов?',
                        topicDetails: 'Вы владелец фотостудии. Как вы нарабатываете клиентскую базу? Как вы привлекаете новых клиентов?',
                      ),
                    ));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
