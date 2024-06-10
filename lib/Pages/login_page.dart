import 'package:flutter/material.dart';
import 'package:forum/Pages/home_page.dart';
import 'package:forum/Pages/register_page.dart';
import 'package:forum/Widgets/app_bar_widget.dart';
import 'package:forum/constants/constants.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'dart:async';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute(builder: (context) => const LoginPage());
  }

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isLoading = false;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future<void> _signIn(BuildContext context) async {
    setState(() {
      _isLoading = true;
    });

    final navigator = Navigator.of(context);
    final scaffoldMessenger = ScaffoldMessenger.of(context);

    try {
      await Future.delayed(const Duration(seconds: 1));

      await supabase.auth.signInWithPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );
      navigator.pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => const HomePage()),
        (route) => false,
      );
    } on AuthException catch (error) {
      scaffoldMessenger.showSnackBar(
        SnackBar(content: Text(error.message)),
      );
    } catch (_) {
      scaffoldMessenger.showSnackBar(
        const SnackBar(content: Text(unexpectedErrorMessage)),
      );
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const AppBarWidget(text: 'Курсовая работа', isBack: false),
      ),
      body: ListView(
        padding: formPadding,
        children: [
          TextFormField(
            controller: _emailController,
            decoration: const InputDecoration(labelText: 'Email'),
            keyboardType: TextInputType.emailAddress,
          ),
          formSpacer,
          TextFormField(
            controller: _passwordController,
            decoration: const InputDecoration(labelText: 'Пароль'),
            obscureText: true,
          ),
          formSpacer,
          ElevatedButton(
            onPressed: _isLoading ? null : () => _signIn(context),
            child: const Text('Войти'),
          ),
          formSpacer,
          TextButton(
            onPressed: () {
              Navigator.of(context).push(RegisterPage.route());
            },
            child: const Text('У меня нет аккаунта'),
          ),
        ],
      ),
    );
  }
}
