import 'package:flutter/material.dart';
import 'package:seek_home_app/utils/constants.dart';

Widget buildHostelsNearMeSection({
  required double screenWidth,
  required bool isSmallScreen,
  required double screenHeight,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Hostels near me',
        style: TextStyle(
          fontSize: isSmallScreen ? screenWidth * 0.045 : 18,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
      ),
      SizedBox(height: screenHeight * 0.02),
      buildHostelCard(
        'Pine Hostels',
        '\$47',
        '2 rooms',
        '1 bath',
        isSmallScreen: isSmallScreen,
        screenWidth: screenWidth,
        screenHeight: screenHeight,
      ),
      SizedBox(height: screenHeight * 0.015),
      buildHostelCard(
        'Pine Hostels',
        '\$47',
        '2 rooms',
        '1 bath',
        isSmallScreen: isSmallScreen,
        screenWidth: screenWidth,
        screenHeight: screenHeight,
      ),
    ],
  );
}

// Indiviual Hostel Card
Widget buildHostelCard(
  String name,
  String price,
  String rooms,
  String baths, {
  required double screenWidth,
  required bool isSmallScreen,
  required double screenHeight,
}) {
  final cardHeight = isSmallScreen ? screenHeight * 0.12 : 100.0;
  final imageWidth = isSmallScreen ? screenWidth * 0.22 : 90.0;
  final borderRadius = 8.0;

  return Container(
    height: cardHeight,
    margin: EdgeInsets.only(bottom: 8),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(borderRadius),
      border: Border.all(color: Colors.grey.shade300, width: 1.0),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.shade200,
          blurRadius: 6,
          offset: const Offset(0, 2),
          spreadRadius: 1,
        ),
      ],
    ),
    child: Row(
      children: [
        // Image Section
        ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(borderRadius),
            bottomLeft: Radius.circular(borderRadius),
          ),
          child: Container(
            width: imageWidth,
            height: cardHeight,
            child: Image.asset(
              hostelDummyImage,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  color: Colors.grey.shade200,
                  child: Icon(
                    Icons.image_not_supported,
                    color: Colors.grey.shade400,
                    size: isSmallScreen ? 24 : 32,
                  ),
                );
              },
            ),
          ),
        ),

        // Content Section
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: isSmallScreen ? 8.0 : 12.0,
              vertical: isSmallScreen ? 6.0 : 10.0,
            ),
            child: _buildScreenLayout(
              name,
              price,
              rooms,
              baths,
              screenWidth,
              isSmallScreen,
            ),
          ),
        ),
      ],
    ),
  );
}

// Small screen layout - matches screenshot (vertical alignment)
Widget _buildScreenLayout(
  String name,
  String price,
  String rooms,
  String baths,
  double screenWidth,
  bool isSmallScreen,
) {
  return Row(
    children: [
      // Left section: Name, Price, Location in vertical alignment
      Expanded(
        flex: 3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Hostel name
            Text(
              name,
              style: TextStyle(
                fontSize: isSmallScreen ? 13 : 15,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),

            // Price
            Text(
              price,
              style: TextStyle(
                fontSize: isSmallScreen ? 13 : 15,
                fontWeight: FontWeight.w700,
                color: Colors.blue.shade600,
              ),
            ),

            // Location
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.location_on_outlined,
                  size: isSmallScreen ? 11 : 14,
                  color: Colors.blue,
                ),
                SizedBox(width: 3),
                Expanded(
                  child: Text(
                    'North street, Main boulevard road, LA',
                    style: TextStyle(
                      fontSize: isSmallScreen ? 9 : 11,
                      color: Colors.grey.shade600,
                      fontWeight: FontWeight.w400,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

      // Right section: Amenities in vertical alignment
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSmallScreenAmenity(rooms, Icons.bed_outlined, isSmallScreen),
          _buildSmallScreenAmenity(
            baths,
            Icons.bathtub_outlined,
            isSmallScreen,
          ),
          _buildSmallScreenAmenity(
            'Available',
            Icons.local_parking_outlined,
            isSmallScreen,
          ),
        ],
      ),
    ],
  );
}

// Small screen amenity widget (simpler) with responsive sizing
Widget _buildSmallScreenAmenity(
  String text,
  IconData icon,
  bool isSmallScreen,
) {
  return Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(icon, size: isSmallScreen ? 10 : 12, color: Colors.blue),
      SizedBox(width: 2),
      Text(
        text,
        style: TextStyle(
          fontSize: isSmallScreen ? 8 : 10,
          color: Colors.grey.shade600,
          fontWeight: FontWeight.w500,
        ),
      ),
    ],
  );
}
