import 'package:flutter/material.dart';

class EllipseWidget extends StatelessWidget {
  final double width;
  final double height;
  final Color color;

  const EllipseWidget({
    super.key,
    required this.width,
    required this.height,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(width, height),
      painter: EllipsePainter(color),
    );
  }
}

class EllipsePainter extends CustomPainter {
  final Color color;

  EllipsePainter(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = color;
    final rect = Rect.fromLTWH(0, 0, size.width, size.height);
    canvas.drawOval(rect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
