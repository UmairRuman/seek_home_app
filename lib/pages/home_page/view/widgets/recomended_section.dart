import 'package:flutter/material.dart';
import 'package:seek_home_app/utils/constants.dart';

Widget buildRecommendedSection({
  required double screenWidth,
  required bool isSmallScreen,
  required double screenHeight,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Recommended',
        style: TextStyle(
          fontSize: isSmallScreen ? screenWidth * 0.045 : 18,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
      ),
      SizedBox(height: screenHeight * 0.02),
      buildRecommendedCard(
        isSmallScreen: isSmallScreen,
        screenWidth: screenWidth,
        screenHeight: screenHeight,
      ),
    ],
  );
}

Widget buildRecommendedCard({
  required double screenWidth,
  required bool isSmallScreen,
  required double screenHeight,
}) {
  // Responsive dimensions
  final cardHeight = isSmallScreen ? screenHeight * 0.14 : 120.0;
  final imageWidth = isSmallScreen ? screenWidth * 0.28 : 130.0;
  final borderRadius = isSmallScreen ? 12.0 : 14.0;

  return Container(
    height: cardHeight,
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
              livingRoomDummyImage,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  color: Colors.grey.shade200,
                  child: Icon(
                    Icons.image_not_supported,
                    color: Colors.grey.shade400,
                    size: isSmallScreen ? 30 : 40,
                  ),
                );
              },
            ),
          ),
        ),

        // Content Section
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(isSmallScreen ? 12.0 : 14.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Location Row
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      locationIcon,
                      width: isSmallScreen ? 12 : 14,
                      height: isSmallScreen ? 12 : 14,
                      color: Colors.blue,
                      errorBuilder: (context, error, stackTrace) {
                        return Icon(
                          Icons.location_on,
                          size: isSmallScreen ? 12 : 14,
                          color: Colors.blue,
                        );
                      },
                    ),
                    SizedBox(width: 4),
                    Expanded(
                      child: Text(
                        'North street, Main boulevard road, LA',
                        style: TextStyle(
                          fontSize: isSmallScreen ? 11 : 12,
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.w500,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),

                // Amenities Row
                Row(
                  children: [
                    buildAmenityItem(bedIcon, '4 room', isSmallScreen),
                    SizedBox(width: isSmallScreen ? 12 : 16),
                    buildAmenityItem(bathTubIcon, '3 Bath', isSmallScreen),
                    SizedBox(width: isSmallScreen ? 12 : 16),
                    Expanded(
                      child: buildAmenityItem(
                        parkingIcon,
                        'Available',
                        isSmallScreen,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

// Updated Amenity Item Builder with responsive design
Widget buildAmenityItem(String iconPath, String text, bool isSmallScreen) {
  return Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Image.asset(
        iconPath,
        width: isSmallScreen ? 14 : 16,
        height: isSmallScreen ? 14 : 16,
        color: Colors.grey.shade600,
        errorBuilder: (context, error, stackTrace) {
          IconData fallbackIcon;
          switch (iconPath) {
            case bedIcon:
              fallbackIcon = Icons.bed;
              break;
            case bathTubIcon:
              fallbackIcon = Icons.bathtub;
              break;
            case parkingIcon:
              fallbackIcon = Icons.local_parking;
              break;
            default:
              fallbackIcon = Icons.info;
          }
          return Icon(
            fallbackIcon,
            size: isSmallScreen ? 14 : 16,
            color: Colors.grey.shade600,
          );
        },
      ),
      SizedBox(width: 4),
      Flexible(
        child: Text(
          text,
          style: TextStyle(
            fontSize: isSmallScreen ? 10 : 12,
            color: Colors.grey.shade600,
            fontWeight: FontWeight.w500,
          ),
          overflow: TextOverflow.ellipsis,
        ),
      ),
    ],
  );
}
