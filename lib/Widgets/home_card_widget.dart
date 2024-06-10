import 'package:flutter/material.dart';

class HomeCardWidget extends StatelessWidget {
  final double modelHeight;
  final double modelWidth;
  final Color modelColor;
  final String modelImage;
  final String modelDescription;
  final void Function()? onTap;

  const HomeCardWidget({
    super.key,
    required this.modelHeight,
    required this.modelWidth,
    required this.modelColor,
    required this.modelImage,
    required this.modelDescription,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: modelHeight,
        width: modelWidth,
        decoration: BoxDecoration(
          color: modelColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              spreadRadius: 0,
              blurRadius: 4,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage(modelImage),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 5, right: 5),
              child: Text(
                modelDescription,
                style: const TextStyle(
                  color: Color.fromRGBO(173, 174, 174, 1),
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
