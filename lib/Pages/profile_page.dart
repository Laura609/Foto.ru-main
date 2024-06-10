import 'package:flutter/material.dart';
import 'package:forum/Widgets/app_bar_widget.dart';
import 'package:forum/Widgets/bottom_bar_widget.dart';

class ProfilePage extends StatefulWidget {
  static const routeName = '/profile-page';
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

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
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 23),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 50),
                Center(
                  child: CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage('assets/ava.jpg'),
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: Text(
                    'Laura',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'О себе: Здесь можно добавить описание профиля...',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                  ),
                  textAlign: TextAlign.left,
                  softWrap: true,
                ),
                SizedBox(height: 20),
                Text(
                  'Возраст: 19',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Пол: Женский',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
