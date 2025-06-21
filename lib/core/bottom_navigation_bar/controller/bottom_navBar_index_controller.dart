import 'package:flutter_riverpod/flutter_riverpod.dart';

final bttomNavBarCurrentIndexProvider =
    NotifierProvider<BottomNavbarIndexController, int>(
      BottomNavbarIndexController.new,
    );

class BottomNavbarIndexController extends Notifier<int> {
  @override
  int build() {
    return 0;
  }

  void setIndex(int index) {
    state = index;
  }
}
