import 'package:flutter/material.dart';
import 'file:///C:/Users/NiMo-/AndroidStudioProjects/jameia_apps/lib/utilities/constants.dart';

class CirclePurple extends CustomPainter {
  final double radius;

  CirclePurple(this.radius);

  @override
  void paint(Canvas canvas, Size size) {
    Rect rect = Rect.fromLTWH(0, 0, size.width, size.height);
    Gradient gradient = kGradient;
    final paint = Paint();
    paint.shader = gradient.createShader(rect);
    var center = Offset(size.width / 2, size.height / 2);
    canvas.drawCircle(center, radius, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
