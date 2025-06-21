import 'package:flutter/material.dart';

Widget buildSearchBar({
  required double screenHeight,
  required double screenWidth,
  required bool isSmallScreen,
}) {
  return Container(
    height: isSmallScreen ? 45 : 50,
    width: screenWidth * 0.90,
    margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2),
          spreadRadius: 2,
          blurRadius: 5,
          offset: Offset(0, 3),
        ),
      ],
      border: Border.all(color: Colors.grey.shade300),
    ),
    child: Row(
      children: [
        SizedBox(width: 16),
        Icon(Icons.search, color: Colors.blueAccent, size: 22),
        SizedBox(width: 12),
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search here...',
              hintStyle: TextStyle(
                color: Colors.grey[600],
                fontSize: isSmallScreen ? 14 : 16,
              ),
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(
                vertical: isSmallScreen ? 17 : 15,
              ),
            ),
          ),
        ),
        IconButton(
          icon: Icon(Icons.mic, color: Colors.blueAccent, size: 22),
          onPressed: () {},
        ),
        SizedBox(width: 12),
      ],
    ),
  );
}
