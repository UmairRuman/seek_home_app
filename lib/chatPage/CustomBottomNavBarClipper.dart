import 'package:flutter/material.dart';

class CustomBottomNavBarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final height = size.height;
    final width = size.width;

    Path path = Path();
    path.moveTo(width * 0.0033333, height * 0.98);
    path.lineTo(width * 1.0033333, height);
    path.lineTo(width * 0.9966667, 0);
    path.lineTo(width * 0.4966667, height * 0.48);
    path.lineTo(0, height * 0.01);
    path.lineTo(width * 0.0033333, height * 0.98);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
