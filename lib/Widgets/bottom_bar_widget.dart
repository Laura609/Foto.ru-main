import 'package:flutter/material.dart';
import 'package:forum/Pages/Forums/forum_page.dart';
import 'package:forum/Pages/home_page.dart';
import 'package:forum/Pages/profile_page.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: const Color.fromRGBO(43, 43, 43, 1),
      selectedItemColor: const Color.fromRGBO(48, 127, 245, 1),
      unselectedItemColor: const Color.fromRGBO(173, 174, 174, 1),
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex(context),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Главная",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.forum),
          label: "Форум",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          label: "Профиль",
        ),
      ],
      onTap: (int index) {
        if (index != _selectedIndex(context)) {
          switch (index) {
            case 0:
              Navigator.of(context).pushNamed(HomePage.routeName);
              break;
            case 1:
              Navigator.of(context).pushNamed(ForumPage.routeName);
              break;
            case 2:
              Navigator.of(context).pushNamed(ProfilePage.routeName);
              break;
            default:
              break;
          }
        }
      },
    );
  }

  int _selectedIndex(BuildContext context) {
    final routeName = ModalRoute.of(context)!.settings.name;
    if (routeName == HomePage.routeName) {
      return 0;
    } else if (routeName == ForumPage.routeName) {
      return 1;
    } else if (routeName == ProfilePage.routeName) {
      return 2;
    }
    return 0;
  }
}
