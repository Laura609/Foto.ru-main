import 'package:flutter/material.dart';

class HomeWidgetPhoto extends StatefulWidget {
  final double modelHeight;
  final double modelWidth;
  final Color modelColor;
  final String imagePath;
  final int initialLikeCount;

  const HomeWidgetPhoto({
    super.key,
    required this.modelHeight,
    required this.modelWidth,
    required this.modelColor,
    required this.imagePath,
    required this.initialLikeCount,
  });

 @override
  State<HomeWidgetPhoto> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<HomeWidgetPhoto> {
  late int _likeCount;
  bool _isLiked = false;

  @override
  void initState() {
    super.initState();
    _likeCount = widget.initialLikeCount;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: widget.modelHeight,
          width: widget.modelWidth,
          decoration: BoxDecoration(
            color: widget.modelColor,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                spreadRadius: 0,
                blurRadius: 4,
                offset: const Offset(0, 4),
              ),
            ],
            image: DecorationImage(
              image: AssetImage(widget.imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 8,
          left: 8,
          child: GestureDetector(
            onTap: () {
              setState(() {
                if (!_isLiked) {
                  _likeCount++;
                  _isLiked = true;
                }
              });
            },
            child: Row(
              children: [
                Icon(
                  _isLiked ? Icons.favorite : Icons.favorite_border,
                  color: _isLiked ? Colors.blue : Colors.white,
                ),
                const SizedBox(width: 4),
                Text(
                  _likeCount.toString(),
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
