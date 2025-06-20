import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:seek_home_app/pages/signup_page/widgets/input_widgets_signUp_page.dart';
import 'package:seek_home_app/utils/common/bottom_rounded_rectangle.dart';
import 'package:seek_home_app/utils/common/top_rounded_rectangle.dart';
import 'package:seek_home_app/utils/constants.dart';

class SignupPageView extends StatefulWidget {
  const SignupPageView({super.key});

  @override
  State<SignupPageView> createState() => _SignupPageViewState();
}

class _SignupPageViewState extends State<SignupPageView> {
  final TextEditingController _emailController = TextEditingController();
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
            // Background building image
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: ClipPath(
                clipper: CustomRoundedRectangleFromBottom(),
                child: Container(
                  height: screenHeight * 0.35,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/login_page_logo.jpg',
                      ), // Replace with your building image
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),

            // Main content container with custom clipper
            Positioned(
              top: screenHeight * 0.20,
              left: 0,
              right: 0,
              bottom: 0,
              child: ClipPath(
                clipper: CustomRoundedRectangleFromTop(),
                child: LayoutBuilder(
                  builder:
                      (context, constraints) => Container(
                        height: constraints.maxHeight,
                        width: constraints.maxWidth,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              const Color(
                                0xFF87CEEB,
                              ).withOpacity(0.85), // Sky blue with transparency
                              const Color(0xFF5DADE2).withOpacity(0.95),
                              const Color(0xFF3498DB),
                            ],
                          ),
                        ),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 0.5, sigmaY: 0.5),
                          child: LayoutBuilder(
                            builder: (context, constraints) {
                              log(
                                "Width From constraints : ${constraints.maxWidth}",
                              );
                              log(
                                "Height From constraints : ${constraints.maxHeight}",
                              );
                              return Container(
                                width: constraints.maxWidth,
                                height: constraints.maxHeight,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.1),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: isSmallScreen ? 24.0 : 32.0,
                                  ),
                                  child: Column(
                                    children: [
                                      const Spacer(flex: 5),
                                      // Login title
                                      Expanded(
                                        flex: 12,
                                        child: Text(
                                          'Login',
                                          style: TextStyle(
                                            fontSize: isSmallScreen ? 36 : 42,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.white,
                                            letterSpacing: 1.2,
                                          ),
                                        ),
                                      ),

                                      // Subtitle
                                      Expanded(
                                        flex: 5,
                                        child: Text(
                                          "Let's get you back in!",
                                          style: TextStyle(
                                            fontSize: isSmallScreen ? 16 : 18,
                                            color: Colors.white.withOpacity(
                                              0.9,
                                            ),
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                      ),
                                      // User name field
                                      Expanded(
                                        flex: 10,
                                        child: SignUpInputFieldBuilder(
                                          isSmallScreen: isSmallScreen,
                                          screenWidth: screenWidth,
                                          controller: _usernameController,
                                          hintText: 'Name',
                                          icon: Icons.person_outline,
                                          isPassword: false,
                                        ),
                                      ),
                                      const Spacer(flex: 3),
                                      // Username field
                                      Expanded(
                                        flex: 10,
                                        child: SignUpInputFieldBuilder(
                                          isSmallScreen: isSmallScreen,
                                          screenWidth: screenWidth,
                                          controller: _usernameController,
                                          hintText: 'Email',
                                          icon: Icons.person_outline,
                                          isPassword: false,
                                        ),
                                      ),
                                      const Spacer(flex: 3),
                                      // Password field
                                      Expanded(
                                        flex: 10,
                                        child: SignUpInputFieldBuilder(
                                          isSmallScreen: isSmallScreen,
                                          screenWidth: screenWidth,
                                          controller: _usernameController,
                                          hintText: 'Password',
                                          icon: Icons.person_outline,
                                          isPassword: false,
                                        ),
                                      ),

                                      // Login button
                                      Expanded(
                                        flex: 8,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            // Handle login
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: const Color(
                                              0xFF2C3E50,
                                            ),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
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
                                      ),
                                      const Spacer(flex: 2),
                                      // Social login buttons

                                      // Sign up link
                                      Expanded(
                                        flex: 10,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Already have an account? ",
                                              style: TextStyle(
                                                color: Colors.white.withOpacity(
                                                  0.8,
                                                ),
                                                fontSize: 14,
                                              ),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                // Handle sign up
                                              },
                                              child: const Text(
                                                'Login_in',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                  decoration:
                                                      TextDecoration.underline,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
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
