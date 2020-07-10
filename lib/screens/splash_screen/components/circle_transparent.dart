import 'package:flutter/material.dart';

class CircleTransparent extends CustomPainter {
  final double radius;

  CircleTransparent(this.radius);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = Color(0xFF7F9A3);
    var center = Offset(size.width / 2, size.height / 2);
    canvas.drawCircle(center, radius, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
