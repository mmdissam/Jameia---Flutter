import 'package:flutter/material.dart';
import 'package:jameiaapps/constants.dart';

class SharedCirclePurpleTopLeft extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Rect rect = Rect.fromLTWH(0, 0, size.width, size.height);
    Gradient gradient = kGradient;
    final paint = Paint();
    paint.shader = gradient.createShader(rect);
    canvas.drawCircle(Offset(10, -20), 100, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
