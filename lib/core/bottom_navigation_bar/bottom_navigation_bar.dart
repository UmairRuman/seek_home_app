import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:seek_home_app/core/bottom_navigation_bar/controller/bottom_navBar_index_controller.dart';

class BottomNavBar extends ConsumerWidget {
  final int currentIndex;

  const BottomNavBar({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 15,
            offset: Offset(0, -3),
            spreadRadius: 0,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
        child: Row(
          children: [
            Expanded(
              child: navItem(icon: Icons.home_outlined, index: 0, ref: ref),
            ),
            Expanded(
              child: navItem(
                icon: Icons.chat_bubble_outline,
                index: 1,
                ref: ref,
              ),
            ),
            // Center elevated button
            Container(
              width: 70,
              alignment: Alignment.center,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.blue.shade400, Colors.blue.shade600],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue.withOpacity(0.4),
                      blurRadius: 12,
                      offset: Offset(0, 6),
                    ),
                  ],
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(25),
                    onTap: () {
                      ref
                          .read(bttomNavBarCurrentIndexProvider.notifier)
                          .setIndex(2);
                    },
                    child: Icon(Icons.add, color: Colors.white, size: 26),
                  ),
                ),
              ),
            ),
            Expanded(
              child: navItem(icon: Icons.apps_outlined, index: 3, ref: ref),
            ),
            Expanded(
              child: navItem(icon: Icons.person_outline, index: 4, ref: ref),
            ),
          ],
        ),
      ),
    );
  }

  Widget navItem({
    required IconData icon,
    required int index,
    required WidgetRef ref,
  }) {
    bool isSelected = currentIndex == index;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          ref.read(bttomNavBarCurrentIndexProvider.notifier).setIndex(index);
        },
        child: Container(
          height: 75,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: isSelected ? Colors.blue.shade600 : Colors.grey.shade400,
                size: 26,
              ),
              SizedBox(height: 6),
              // Active indicator dot
              Container(
                width: isSelected ? 6 : 0,
                height: isSelected ? 6 : 0,
                decoration: BoxDecoration(
                  color: Colors.blue.shade600,
                  shape: BoxShape.circle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
