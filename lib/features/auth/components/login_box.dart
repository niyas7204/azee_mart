import 'package:flutter/material.dart';

class LoginPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paintfill_0 = Paint()
      ..color = const Color.fromARGB(166, 105, 159, 122)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(0, 30);
    path_0.quadraticBezierTo(0, 0, 30, 0);
    path_0.lineTo(size.width * 0.5 - 45, 0);
    path_0.quadraticBezierTo(size.width * 0.5 - 5, 0, size.width * 0.5 - 5, 45);

    path_0.quadraticBezierTo(
        size.width * 0.5 + 10, 90, size.width * 0.5 + 40, 90);
    path_0.lineTo(size.width - 30, 90);

    path_0.quadraticBezierTo(size.width, 90, size.width, 120);
    path_0.lineTo(size.width, size.height - 30);
    path_0.quadraticBezierTo(
        size.width, size.height, size.width - 30, size.height);
    path_0.lineTo(30, size.height);
    path_0.quadraticBezierTo(0, size.height, 0, size.height - 30);
    path_0.close();

    canvas.drawPath(path_0, paintfill_0);
    // Layer 1
    var paint = Paint();
    paint.color = Colors.green;
    paint.style = PaintingStyle.fill;
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
