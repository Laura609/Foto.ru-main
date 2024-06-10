import 'package:flutter/material.dart';
import 'package:forum/Pages/home_page.dart';
import 'package:forum/Pages/register_page.dart';
import 'package:forum/constants/constants.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _redirect();
  }

  Future<void> _redirect() async {
    final navigator = Navigator.of(context);

    await Future.delayed(Duration.zero);

    final session = supabase.auth.currentSession;
    if (session == null) {
      navigator.pushAndRemoveUntil(RegisterPage.route(), (route) => false);
    } else {
      navigator.pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => const HomePage()),
        (route) => false,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: preloader);
  }
}
