import 'package:flutter/material.dart';
import 'package:forum/Pages/home_page.dart';
import 'package:forum/Pages/login_page.dart';
import 'package:forum/Widgets/app_bar_widget.dart';
import 'package:forum/constants/constants.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key, required this.isRegistering});

  static Route<void> route({bool isRegistering = false}) {
    return MaterialPageRoute(
      builder: (context) => RegisterPage(isRegistering: isRegistering),
    );
  }

  final bool isRegistering;

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final bool _isLoading = false;

  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _usernameController = TextEditingController();

Future<void> _signUp() async {
  final isValid = _formKey.currentState!.validate();
  if (!isValid) {
    return;
  }
  final email = _emailController.text;
  final password = _passwordController.text;
  final username = _usernameController.text;
  
  final navigator = Navigator.of(context);
  final scaffoldMessenger = ScaffoldMessenger.of(context);
    try {
    await supabase.auth.signUp(
        email: email, password: password, data: {'username': username});
    navigator.pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => const HomePage()),
      (route) => false,
    );
  } on AuthException catch (error) {
    scaffoldMessenger.showSnackBar(
      SnackBar(content: Text(error.message)),
    );
  } catch (error) {
    scaffoldMessenger.showSnackBar(
      const SnackBar(content: Text(unexpectedErrorMessage)),
    );
  }
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
      body: Form(
        key: _formKey,
        child: ListView(
          padding: formPadding,
          children: [
            TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(
                label: Text('Email'),
              ),
              validator: (val) {
                if (val == null || val.isEmpty) {
                  return 'Введите корректно свой Email';
                }
                return null;
              },
              keyboardType: TextInputType.emailAddress,
            ),
            formSpacer,
            TextFormField(
              controller: _usernameController,
              decoration: const InputDecoration(
                label: Text('Логин'),
              ),
              validator: (val) {
                if (val == null || val.isEmpty) {
                  return 'Заполните поле';
                }
                final isValid = RegExp(r'^[A-Za-z0-9_]{3,24}$').hasMatch(val);
                if (!isValid) {
                  return '3-24 символов';
                }
                return null;
              },
            ),
            formSpacer,
                        TextFormField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                label: Text('Пароль'),
              ),
              validator: (val) {
                if (val == null || val.isEmpty) {
                  return 'Заполните поле';
                }
                if (val.length < 6) {
                  return '6 символов минимум';
                }
                return null;
              },
            ),
            formSpacer,
            ElevatedButton(
              onPressed: _isLoading ? null : _signUp,
              child: const Text('Регистрация'),
            ),
            formSpacer,
            TextButton(
              onPressed: () {
                Navigator.of(context).push(LoginPage.route());
              },
              child: const Text('У меня уже есть аккаунт'),
            )
          ],
        ),
      ),
    );
  }
}
