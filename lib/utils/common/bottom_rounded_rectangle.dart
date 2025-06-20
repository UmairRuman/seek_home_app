import 'package:flutter/material.dart';

class CustomRoundedRectangleFromBottom extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final height = size.height;
    final width = size.width;
    final heightDivByEight = height / 8;

    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(0, height); // Adjusted to stay within bounds
    path.quadraticBezierTo(
      width * 0.5, // Control point x
      height, // Control point y
      width, // End point x
      height, // End point y
    );
    path.lineTo(width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
