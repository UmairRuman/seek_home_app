import 'package:flutter/material.dart';

Widget socialButtonBuilder({
  required bool isSmallScreen,
  required double screenWidth,
  required String text,
  required IconData icon,
  required Color color,
  required VoidCallback onPressed,
}) {
  return SizedBox(
    width: isSmallScreen ? screenWidth * 0.6 : screenWidth * 0.4,
    child: OutlinedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon, size: 20, color: color),
      label: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: isSmallScreen ? 12 : 16,
          fontWeight: FontWeight.w500,
        ),
      ),
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: Colors.white, width: 1.5),
        foregroundColor: Colors.white,
        backgroundColor: color.withOpacity(0.1),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        elevation: 0,
      ),
    ),
  );
}

class LoginButton extends StatelessWidget {
  final bool isSmallScreen;
  final double screenWidth;
  const LoginButton({
    super.key,
    required this.isSmallScreen,
    required this.screenWidth,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: isSmallScreen ? screenWidth * 0.5 : screenWidth * 0.3,
      child: ElevatedButton(
        onPressed: () {
          // Handle login
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF2C3E50),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          elevation: 2,
        ),
        child: const Text(
          'Log In',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
