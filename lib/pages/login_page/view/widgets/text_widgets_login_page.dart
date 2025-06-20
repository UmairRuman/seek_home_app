import 'package:flutter/material.dart';
import 'package:seek_home_app/pages/signup_page/view/signUp_page_view.dart';

class DontHaveAnAccountTextWidget extends StatelessWidget {
  final bool isSmallScreen;
  final double screenWidth;
  const DontHaveAnAccountTextWidget({
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
          "Don't have an account? ",
          style: TextStyle(
            color: Colors.white.withOpacity(0.8),
            fontSize: isSmallScreen ? 13 : 16,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, SignupPageView.pageName);
          },
          child: Text(
            'Sign-up',
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

class ForgotPassWordTextWidget extends StatelessWidget {
  final bool isSmallScreen;
  final double screenWidth;
  const ForgotPassWordTextWidget({
    super.key,
    required this.isSmallScreen,
    required this.screenWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: isSmallScreen ? screenWidth * 0 : screenWidth * 0.15,
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: TextButton(
          onPressed: () {
            // Handle forgot password
          },
          child: Text(
            'Forgot Password?',
            style: TextStyle(
              color: Colors.white.withOpacity(0.8),
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}

class LoginSubTextWidget extends StatelessWidget {
  final bool isSmallScreen;
  const LoginSubTextWidget({super.key, required this.isSmallScreen});

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

class LoginTextWidget extends StatelessWidget {
  final bool isSmallScreen;
  const LoginTextWidget({super.key, required this.isSmallScreen});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Login',
      style: TextStyle(
        fontSize: isSmallScreen ? 36 : 42,
        fontWeight: FontWeight.w500,
        color: Colors.white,
        letterSpacing: 1.5,
      ),
    );
  }
}
