import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:seek_home_app/pages/signup_page/widgets/buttons_signUp_page.dart';
import 'package:seek_home_app/pages/signup_page/widgets/input_widgets_signUp_page.dart';
import 'package:seek_home_app/pages/signup_page/widgets/text_widgets_signup_page.dart';
import 'package:seek_home_app/utils/common/top_rounded_rectangle.dart';
import 'package:seek_home_app/utils/constants.dart';

class SignupPageView extends StatefulWidget {
  static const pageName = "/signUpPage";
  const SignupPageView({super.key});

  @override
  State<SignupPageView> createState() => _SignupPageViewState();
}

class _SignupPageViewState extends State<SignupPageView> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenHeight = getScreenHeight(context);
    final screenWidth = getScreenWidth(context);
    final isSmallScreen = screenWidth < 400;

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            // Background building image
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                height: screenHeight * 0.35,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/signup_page_logo.jpg',
                    ), // Replace with your building image
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            // Main content container with custom clipper
            Positioned(
              top: screenHeight * 0.05,
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
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      top: screenHeight * 0.2,
                                    ),
                                    child: Column(
                                      children: [
                                        const Spacer(flex: 5),
                                        // Login title
                                        Expanded(
                                          flex: 12,
                                          child: SignUpTextWidget(
                                            isSmallScreen: isSmallScreen,
                                          ),
                                        ),

                                        // Subtitle
                                        Expanded(
                                          flex: 5,
                                          child: SignUpPageSubTextWidget(
                                            isSmallScreen: isSmallScreen,
                                          ),
                                        ),
                                        // User name field
                                        const Spacer(flex: 3),
                                        Expanded(
                                          flex: 8,
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
                                          flex: 8,
                                          child: SignUpInputFieldBuilder(
                                            isSmallScreen: isSmallScreen,
                                            screenWidth: screenWidth,
                                            controller: _emailController,
                                            hintText: 'Email',
                                            icon: Icons.person_outline,
                                            isPassword: false,
                                          ),
                                        ),
                                        const Spacer(flex: 3),
                                        // Password field
                                        Expanded(
                                          flex: 8,
                                          child: SignUpInputFieldBuilder(
                                            isSmallScreen: isSmallScreen,
                                            screenWidth: screenWidth,
                                            controller: _passwordController,
                                            hintText: 'Password',
                                            icon: Icons.person_outline,
                                            isPassword: false,
                                          ),
                                        ),
                                        Spacer(flex: 5),
                                        // Login button
                                        Expanded(
                                          flex: 8,
                                          child: SignUpButton(
                                            isSmallScreen: isSmallScreen,
                                            screenWidth: screenWidth,
                                          ),
                                        ),
                                        const Spacer(flex: 2),
                                        // Social login buttons

                                        // Sign up link
                                        Expanded(
                                          flex: 10,
                                          child: AlreadyHaveAnAccountTextWidget(
                                            isSmallScreen: isSmallScreen,
                                            screenWidth: screenWidth,
                                          ),
                                        ),
                                      ],
                                    ),
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
