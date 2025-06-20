import 'package:flutter/material.dart';

class CustomRoundedRectangleFromTop extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final height = size.height;
    final width = size.width;
    final heightDivByEight = height / 8;

    final path = Path();
    path.moveTo(0, heightDivByEight * 1);
    path.lineTo(0, height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, heightDivByEight * 1);
    path.quadraticBezierTo(
      size.width * 0.5,
      heightDivByEight * 2.5,
      0,
      heightDivByEight * 1,
    );
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
