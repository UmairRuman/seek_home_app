import 'package:flutter/material.dart';
import 'package:seek_home_app/pages/home_page/view/home_page_view.dart';
import 'package:seek_home_app/pages/navigation_controller_page/navigation_controller_page.dart';

class SignUpButton extends StatelessWidget {
  final bool isSmallScreen;
  final double screenWidth;
  const SignUpButton({
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
          Navigator.pushNamed(context, NavigationControllerPage.pageName);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF2C3E50),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          elevation: 2,
        ),
        child: const Text(
          'Sign Up',
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
