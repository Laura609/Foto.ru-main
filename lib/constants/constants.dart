import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

/// Supabase клиент
final supabase = Supabase.instance.client;

const preloader = Center(
    child: CircularProgressIndicator(color: Color.fromRGBO(48, 127, 245, 1)));

/// Простой SizedBox для добавления отступов между элементами формы
const formSpacer = SizedBox(width: 16, height: 16);

/// Padding для всех форм
const formPadding = EdgeInsets.symmetric(vertical: 20, horizontal: 16);

/// Сообщение об ошибке, отображаемое пользователю при возникновении непредвиденной ошибки.
const unexpectedErrorMessage = 'Произошла непредвиденная ошибка.';

/// Основная тема для изменения внешнего вида приложения
final appTheme = ThemeData.dark().copyWith(
  primaryColorDark: const Color.fromRGBO(48, 127, 245, 1),
  appBarTheme: const AppBarTheme(
    elevation: 1,
    backgroundColor: Colors.transparent,
    iconTheme: IconThemeData(color: Color.fromRGBO(43, 43, 43, 1)),
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 18,
    ),
  ),
  primaryColor: const Color.fromRGBO(48, 127, 245, 1),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: const Color.fromRGBO(48, 127, 245, 1),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: const Color.fromRGBO(48, 127, 245, 1),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    floatingLabelStyle: const TextStyle(
      color: Color.fromRGBO(48, 127, 245, 1),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Colors.grey,
        width: 2,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Color.fromRGBO(48, 127, 245, 1),
        width: 2,
      ),
    ),
  ),
);

/// Набор методов расширения для простого отображения snackbar
extension ShowSnackBar on BuildContext {
  /// Отображает базовый snackbar
  void showSnackBar({
    required String message,
    Color backgroundColor = Colors.white,
  }) {
    ScaffoldMessenger.of(this).showSnackBar(SnackBar(
      content: Text(message),
      backgroundColor: backgroundColor,
    ));
  }

  /// Отображает красный snackbar, указывающий на ошибку
  void showErrorSnackBar({required String message}) {
    showSnackBar(message: message, backgroundColor: Colors.red);
  }
}
