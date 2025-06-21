import 'package:flutter/material.dart';
import 'package:seek_home_app/utils/constants.dart';

class CategoriesSectionBuilder extends StatefulWidget {
  final double screenWidth;
  final bool isSmallSreen;
  final double screenHeight;
  const CategoriesSectionBuilder({
    super.key,
    required this.screenHeight,
    required this.isSmallSreen,
    required this.screenWidth,
  });

  @override
  State<CategoriesSectionBuilder> createState() =>
      _CategoriesSectionBuilderState();
}

class _CategoriesSectionBuilderState extends State<CategoriesSectionBuilder> {
  final PageController _categoryPageController = PageController();
  int _currentCategoryIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Browse Categories',
          style: TextStyle(
            fontSize: widget.isSmallSreen ? widget.screenWidth * 0.05 : 18,
            fontWeight: widget.isSmallSreen ? FontWeight.w600 : FontWeight.w700,
            color: Colors.black,
          ),
        ),
        SizedBox(height: widget.screenHeight * 0.015),
        SizedBox(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: servicesAssetList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: buildCategoryItem(
                  servicesAssetList[index],
                  categoryNames[index %
                      categoryNames.length], // Cycle through category names
                  widget.isSmallSreen,
                  widget.screenWidth,
                  widget.screenHeight,
                ),
              );
            },
          ),
        ),
        SizedBox(height: widget.screenHeight * 0.01),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            (servicesAssetList.length / 4).ceil(),
            (index) => Container(
              margin: const EdgeInsets.symmetric(horizontal: 4),
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color:
                    index == (_currentCategoryIndex ~/ 4)
                        ? Colors.blue
                        : const Color.fromARGB(255, 210, 207, 207),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

Widget buildCategoryItem(
  String assetPath,
  String name,
  bool isSmallScreen,
  double screenWidth,
  double screenHeight,
) {
  return Column(
    children: [
      Container(
        width: isSmallScreen ? screenWidth * 0.16 : 60,
        height: isSmallScreen ? 50 : 60,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 235, 244, 251),
          borderRadius: BorderRadius.circular(isSmallScreen ? 6 : 10),
          border: Border.all(color: Colors.blue, width: 1),
        ),
        child: Center(child: Image.asset(assetPath, width: 30, height: 30)),
      ),
      const SizedBox(height: 8),
      Text(
        name,
        style: TextStyle(
          fontSize: isSmallScreen ? 10 : 12,
          fontWeight: FontWeight.w500,
          color: Colors.grey.shade700,
        ),
      ),
    ],
  );
}
