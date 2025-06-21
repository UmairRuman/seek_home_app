import 'package:flutter/material.dart';
import 'package:seek_home_app/pages/chat_pages/BuyingPage.dart';
import 'package:seek_home_app/pages/chat_pages/SellingPage.dart';
import 'package:seek_home_app/pages/chat_pages/firstChatPage.dart';
import 'package:seek_home_app/pages/chat_pages/unreadPage.dart';
import 'package:seek_home_app/pages/home_page/view/home_page_view.dart';
import 'package:seek_home_app/pages/login_page/view/login_page_view.dart';
import 'package:seek_home_app/pages/navigation_controller_page/navigation_controller_page.dart';
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
    HomePageView.pageName => MaterialPageRoute(
      builder: (context) => const HomePageView(),
      settings: settings,
    ),
    ChatScreen.pageName => MaterialPageRoute(
      builder: (context) => const ChatScreen(),
      settings: settings,
    ),
    BuyingPage.pageName => MaterialPageRoute(
      builder: (context) => const BuyingPage(),
      settings: settings,
    ),
    SellingPage.pageName => MaterialPageRoute(
      builder: (context) => const SellingPage(),
      settings: settings,
    ),
    UnreadPage.pageName => MaterialPageRoute(
      builder: (context) => const UnreadPage(),
      settings: settings,
    ),
    NavigationControllerPage.pageName => MaterialPageRoute(
      builder: (context) => const NavigationControllerPage(),
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
