import 'package:flutter/material.dart';
import 'package:seek_home_app/core/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:seek_home_app/pages/home_page/view/widgets/categories_section.dart';
import 'package:seek_home_app/pages/home_page/view/widgets/location_header_homePage.dart';
import 'package:seek_home_app/pages/home_page/view/widgets/near_me_section.dart';
import 'package:seek_home_app/pages/home_page/view/widgets/recomended_section.dart';
import 'package:seek_home_app/pages/home_page/view/widgets/search_bar_home_page.dart';
import 'package:seek_home_app/utils/constants.dart';

class HomePageView extends StatefulWidget {
  static const pageName = '/homePageView';
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final screenWidth = getScreenWidth(context);
    final screenHeight = getScreenHeight(context);
    final isSmallScreen = screenWidth < 400;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.05,
              vertical: screenHeight * 0.02,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Top padding
                SizedBox(height: screenHeight * 0.02),
                // Location Header Section
                buildLocationHeader(
                  screenWidth: screenWidth,
                  isSmallScreen: isSmallScreen,
                ),
                SizedBox(height: screenHeight * 0.01),
                // Search Bar Section
                buildSearchBar(
                  screenHeight: screenHeight,
                  screenWidth: screenWidth,
                  isSmallScreen: isSmallScreen,
                ),
                SizedBox(height: screenHeight * 0.01),
                // Browse Categories Section
                CategoriesSectionBuilder(
                  screenHeight: screenHeight,
                  isSmallSreen: isSmallScreen,
                  screenWidth: screenWidth,
                ),
                SizedBox(height: screenHeight * 0.02),
                // Recommended Section
                buildRecommendedSection(
                  isSmallScreen: isSmallScreen,
                  screenWidth: screenWidth,
                  screenHeight: screenHeight,
                ),
                SizedBox(height: screenHeight * 0.02),
                // Hostels Near Me Section
                buildHostelsNearMeSection(
                  screenWidth: screenWidth,
                  isSmallScreen: isSmallScreen,
                  screenHeight: screenHeight,
                ),
                SizedBox(height: screenHeight * 0.01),
              ],
            ),
          ),
        ),

        // Bottom Navigation Bar
      ),
    );
  }
}
