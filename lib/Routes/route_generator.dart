import 'package:flutter/material.dart';
import 'package:seek_home_app/pages/login_page/view/login_page_view.dart';
import 'package:seek_home_app/pages/signup_page/view/signUp_page_view.dart';

Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  return switch (settings.name) {
    LoginPageView.pageName => MaterialPageRoute(
      builder: (_) => const LoginPageView(),
      settings: settings,
    ),
    SignupPageView.pageName => MaterialPageRoute(
      builder: (context) => SignupPageView(),
      settings: settings,
    ),

    _ => MaterialPageRoute(
      builder:
          (context) =>
              const Scaffold(body: Center(child: Text('Page not found'))),
      settings: settings,
    ),
  };
}
