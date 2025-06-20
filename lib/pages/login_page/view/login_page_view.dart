import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:seek_home_app/pages/login_page/widgets/buttons_login_page.dart';
import 'package:seek_home_app/pages/login_page/widgets/input_widgets_login_page.dart';
import 'package:seek_home_app/pages/login_page/widgets/text_widgets_login_page.dart';
import 'package:seek_home_app/utils/common/top_rounded_rectangle.dart';
import 'package:seek_home_app/utils/constants.dart';

class LoginPageView extends StatefulWidget {
  const LoginPageView({super.key});

  @override
  State<LoginPageView> createState() => _LoginPageViewState();
}

class _LoginPageViewState extends State<LoginPageView> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    final screenHeight = getScreenHeight(context);
    final screenWidth = getScreenWidth(context);
    final isSmallScreen = screenWidth < 400;

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: LoginPageTopImage(screenHeight: screenHeight),
            ),

            Positioned(
              top: screenHeight * 0.05,
              left: 0,
              right: 0,
              bottom: 0,
              child: ClipPath(
                clipper: CustomRoundedRectangleFromTop(),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        const Color(0xFF87CEEB).withOpacity(0.85),
                        const Color(0xFF5DADE2).withOpacity(0.95),
                        const Color(0xFF3498DB),
                      ],
                    ),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 0.5, sigmaY: 0.5),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.1),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal:
                              isSmallScreen
                                  ? screenWidth * 0.2
                                  : screenWidth * 0.15,
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(top: screenHeight * 0.2),
                          child: Column(
                            children: [
                              const Spacer(flex: 5),
                              // Login title
                              Expanded(
                                flex: 12,
                                child: LoginTextWidget(
                                  isSmallScreen: isSmallScreen,
                                ),
                              ),

                              // Subtitle
                              Expanded(
                                flex: 5,
                                child: LoginSubTextWidget(
                                  isSmallScreen: isSmallScreen,
                                ),
                              ),
                              const Spacer(flex: 3),
                              // Username field
                              Expanded(
                                flex: 10,
                                child: InputFieldBuilder(
                                  controller: _usernameController,
                                  hintText: 'User name',
                                  icon: Icons.person_outline,
                                  isPassword: false,
                                ),
                              ),
                              const Spacer(flex: 3),
                              // Password field
                              Expanded(
                                flex: 10,
                                child: InputFieldBuilder(
                                  controller: _passwordController,
                                  hintText: 'Password',
                                  icon: Icons.lock_outline,
                                  isPassword: true,
                                ),
                              ),

                              // Forgot password
                              Expanded(
                                flex: 5,
                                child: ForgotPassWordTextWidget(),
                              ),

                              // Login button
                              Expanded(flex: 8, child: LoginButton()),
                              const Spacer(flex: 2),
                              // Social login buttons
                              Expanded(
                                flex: 8,
                                child: buttonBuilder(
                                  text: 'Login via Facebook',
                                  icon: Icons.facebook,
                                  color: const Color(0xFF3B5998),
                                  onPressed: () {
                                    // Handle Facebook login
                                  },
                                ),
                              ),
                              const Spacer(flex: 1),
                              Expanded(
                                flex: 8,
                                child: buttonBuilder(
                                  text: 'Login via Google',
                                  icon: Icons.g_mobiledata,
                                  color: const Color(0xFFDB4437),
                                  onPressed: () {
                                    // Handle Google login
                                  },
                                ),
                              ),
                              const Spacer(flex: 1),
                              Expanded(
                                flex: 8,
                                child: buttonBuilder(
                                  text: 'Login via Apple',
                                  icon: Icons.apple,
                                  color: const Color(0xFF000000),
                                  onPressed: () {
                                    // Handle Apple login
                                  },
                                ),
                              ),
                              const Spacer(flex: 1),
                              // Sign up link
                              Expanded(
                                flex: 10,
                                child: DontHaveAnAccountTextWidget(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
