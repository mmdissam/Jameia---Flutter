import 'package:flutter/material.dart';

import '../../../constants.dart';

class SharedCirclePurpleBottomRight extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Rect rect = Rect.fromLTWH(0, 0, size.width, size.height);
    Gradient gradient = kGradient;
    final paint = Paint();
    paint.shader = gradient.createShader(rect);
    var center = Offset(size.width, size.height + 30);
    canvas.drawCircle(center, 100, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
