import 'package:flutter/material.dart';

class PasswordWidget extends StatefulWidget {
  final String textTitle;
  final String hintText;
  final Color textTitleColor;
  final double textSize;
  final TextInputType inputType;
  final TextEditingController controller;

  const PasswordWidget({
    super.key,
    required this.controller,
    required this.textTitle,
    required this.hintText,
    required this.textTitleColor,
    required this.textSize,
    this.inputType = TextInputType.text,
  });

  @override
  State<PasswordWidget> createState() => _PasswordWidgetState();
}

var isObsText = true;

class _PasswordWidgetState extends State<PasswordWidget> {
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
                  widget.textTitle,
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
          controller: widget.controller,
          style: const TextStyle(
            fontSize: 14,
            color: Color.fromRGBO(246, 246, 246, 1),
          ),
          cursorColor: const Color.fromRGBO(173, 174, 174, 1),
          obscureText: isObsText,
          keyboardType: widget.inputType,
          decoration: InputDecoration(
             enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromRGBO(167, 167, 167, 1),
          ),
             ),
              suffixIcon: InkWell(
                onTap: () {
                  isObsText = !isObsText;
                  setState(() {});
                },
                child: Icon(
                  isObsText ? Icons.visibility_off : Icons.visibility,
                  size: 18,
                  color: const Color.fromRGBO(246, 246, 246, 1),
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
            labelText: widget.hintText,
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
