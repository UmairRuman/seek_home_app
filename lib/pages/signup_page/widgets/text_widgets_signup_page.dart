import 'package:flutter/material.dart';
import 'package:seek_home_app/pages/login_page/view/login_page_view.dart';

class AlreadyHaveAnAccountTextWidget extends StatelessWidget {
  final bool isSmallScreen;
  final double screenWidth;
  const AlreadyHaveAnAccountTextWidget({
    super.key,
    required this.isSmallScreen,
    required this.screenWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Aready have an account? ",
          style: TextStyle(
            color: Colors.white.withOpacity(0.8),
            fontSize: isSmallScreen ? 13 : 16,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, LoginPageView.pageName);
          },
          child: Text(
            'Log-in',
            style: TextStyle(
              color: Colors.white,
              fontSize: isSmallScreen ? 13 : 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}

class SignUpTextWidget extends StatelessWidget {
  final bool isSmallScreen;
  const SignUpTextWidget({super.key, required this.isSmallScreen});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Sign Up',
      style: TextStyle(
        fontSize: isSmallScreen ? 36 : 42,
        fontWeight: FontWeight.w300,
        color: Colors.white,
        letterSpacing: 1.2,
      ),
    );
  }
}

class SignUpPageSubTextWidget extends StatelessWidget {
  final bool isSmallScreen;
  const SignUpPageSubTextWidget({super.key, required this.isSmallScreen});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Let's get you back in!",
      style: TextStyle(
        fontSize: isSmallScreen ? 16 : 18,
        color: Colors.white.withOpacity(0.9),
        fontWeight: FontWeight.w300,
      ),
    );
  }
}
