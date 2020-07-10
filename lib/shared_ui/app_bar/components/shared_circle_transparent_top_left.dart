import 'package:flutter/material.dart';

class SharedCircleTransparentTopLeft extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = Color(0xFF7F9A3);
    canvas.drawCircle(Offset(10, -20), 150, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
