import 'package:flutter/material.dart';

class CirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.white10
      ..style = PaintingStyle.stroke
      ..strokeWidth = 45;

    canvas.drawCircle(Offset(0, -30), 120, paint);
    canvas.drawCircle(Offset(size.width, size.height + 30), 120, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}