import 'package:flutter/material.dart';
import 'package:seek_home_app/utils/constants.dart';

Widget buildLocationHeader({
  required double screenWidth,
  required bool isSmallScreen,
}) {
  return Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Location',
              style: TextStyle(
                fontSize: isSmallScreen ? screenWidth * 0.045 : 18,
                color: Colors.grey,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: isSmallScreen ? screenWidth * 0.01 : 8),
            Row(
              children: [
                Image.asset(
                  width: isSmallScreen ? 18 : 20,
                  height: isSmallScreen ? 16 : 16,
                  locationIcon,
                  color: Colors.blue,
                  fit: BoxFit.fill,
                ),
                SizedBox(width: isSmallScreen ? screenWidth * 0.02 : 8),
                Text(
                  'Green acres, LA',
                  style: TextStyle(
                    fontSize: isSmallScreen ? screenWidth * 0.04 : 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                SizedBox(width: isSmallScreen ? screenWidth * 0.02 : 8),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.blue,
                  size: isSmallScreen ? screenWidth * 0.07 : 20,
                ),
              ],
            ),
          ],
        ),
      ),
      Container(
        width: isSmallScreen ? 40 : 50,
        height: 40,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue.shade300),
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Icon(
          Icons.notifications,
          color: Color.fromARGB(255, 198, 194, 194),
          size: 20,
        ),
      ),
    ],
  );
}
