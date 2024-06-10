import 'package:flutter/material.dart';
import 'package:forum/Pages/home_page.dart';

class AppBarWidget extends StatelessWidget {
  final bool isBack;
  final String text;

  const AppBarWidget({
    super.key,
    required this.text,
    required this.isBack,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        isBack
            ? InkWell(
                onTap: () {
                  Navigator.pushReplacementNamed(context, HomePage.routeName);
                },
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              )
            : const SizedBox(width: 24),
        Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(width: 24),
      ],
    );
  }
}
