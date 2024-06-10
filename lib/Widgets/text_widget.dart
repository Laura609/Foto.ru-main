import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String textTitle;
  final String hintText;
  final bool isObsText;
  final Color textTitleColor;
  final double textSize;
  final TextInputType inputType;
  final TextEditingController controller;

  const TextWidget({
    super.key,
    required this.controller,
    required this.textTitle,
    required this.hintText,
    required this.textTitleColor,
    required this.textSize,
    this.isObsText = false,
    this.inputType = TextInputType.text,
  });

//TEXT WIDGET
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Text(
                  textTitle,
                  style: const TextStyle(
                      fontSize: 14,
                      color: Colors.transparent,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 5),
        TextFormField(
          autocorrect: false,
          controller: controller,
          style: const TextStyle(
            fontSize: 14,
            color: Color.fromRGBO(246, 246, 246, 1),
          ),
          cursorColor: const Color.fromRGBO(173, 174, 174, 1),
          obscureText: isObsText,
          keyboardType: inputType,
          decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromRGBO(167, 167, 167, 1),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromRGBO(48, 127, 245, 1)
          ),
        ),
        fillColor: Colors.transparent,
        filled: true,
        hintStyle: TextStyle(color: Colors.grey.shade500),
            labelText: hintText,
            labelStyle: const TextStyle(
                fontSize: 14,
                color: Color.fromRGBO(167, 167, 167, 1),
                fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}