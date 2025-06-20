import 'package:flutter/material.dart';

class DontHaveAnAccountTextWidget extends StatelessWidget {
  const DontHaveAnAccountTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "don't have an account? ",
          style: TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 14),
        ),
        GestureDetector(
          onTap: () {
            // Handle sign up
          },
          child: const Text(
            'Sign-up',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}

class ForgotPassWordTextWidget extends StatelessWidget {
  const ForgotPassWordTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
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
            decoration: TextDecoration.underline,
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
        fontWeight: FontWeight.w300,
        color: Colors.white,
        letterSpacing: 1.2,
      ),
    );
  }
}
