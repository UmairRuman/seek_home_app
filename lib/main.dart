import 'package:flutter/material.dart';
import 'package:seek_home_app/pages/login_page/view/login_page_view.dart';
import 'package:seek_home_app/pages/signup_page/view/signUp_page_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: SignupPageView(),
    );
  }
}
