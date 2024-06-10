import 'package:flutter/material.dart';

class MainButtonWidget extends StatelessWidget {
  final String buttonName;
  final dynamic buttonColor;
  final List<BoxShadow>? boxShadow;
  final void Function()? onPressed;

  const MainButtonWidget({
    super.key,
    required this.buttonName,
    required this.buttonColor,
    this.boxShadow, 
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: buttonColor,
          boxShadow: boxShadow, 
        ),
        child: Center(
          child: Text(
            buttonName,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Color.fromRGBO(246, 246, 246, 1),
            ),
          ),
        ),
      ),
    );
  }
}
