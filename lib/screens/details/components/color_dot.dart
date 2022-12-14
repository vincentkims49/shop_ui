import 'package:flutter/material.dart';

import '../../../constants.dart';

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key,
    required this.color,
    required this.isactive,
    required this.press,
  }) : super(key: key);

  final Color color;
  final bool isactive;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: const EdgeInsets.all(defaultPadding / 4),
        decoration: BoxDecoration(
          border:
              Border.all(color: isactive ? primaryColor : Colors.transparent),
          shape: BoxShape.circle,
        ),
        child: CircleAvatar(
          radius: 10,
          backgroundColor: color,
        ),
      ),
    );
  }
}
