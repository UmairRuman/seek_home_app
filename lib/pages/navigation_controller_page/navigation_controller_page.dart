import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:seek_home_app/core/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:seek_home_app/core/bottom_navigation_bar/controller/bottom_navBar_index_controller.dart';
import 'package:seek_home_app/pages/chat_pages/firstChatPage.dart';
import 'package:seek_home_app/pages/home_page/view/home_page_view.dart';

class NavigationControllerPage extends ConsumerWidget {
  static const pageName = '/navigationControllerPage';
  const NavigationControllerPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var state = ref.watch(bttomNavBarCurrentIndexProvider);
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: switch (state) {
            0 => HomePageView(),
            1 => ChatScreen(),
            2 => const Text(
              'Add Service Page',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.blue,
              ),
            ),
            3 => const Text(
              'No Add added yet',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.blue,
              ),
            ),
            4 => const Text(
              'Profile page',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.blue,
              ),
            ),
            _ => const Text('Error Page'),
          },
        ),
        bottomNavigationBar: BottomNavBar(currentIndex: state),
      ),
    );
  }
}
