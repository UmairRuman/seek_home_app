import 'package:flutter/material.dart';

// Getting Screen Dimensions
//Screen Height
double getScreenHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

// Screen Width
double getScreenWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

// Services Asset List
List<String> servicesAssetList = [
  'assets/images/apartment.png',
  'assets/images/hostel.png',
  'assets/images/hotel.png',
  'assets/images/motel.png',
];

// Categories constants

final List<String> categoryNames = ['Hostel', 'Hotel', 'Motel', 'Apartments'];

// Dummy Images to show on the home page

const hostelDummyImage = "assets/images/dummy_hostel.jpg";
const hotelDummyImage = "assets/images/dummy_hotel.jpg";
const livingRoomDummyImage = "assets/images/dummy_living_room.jpg";

// Icons

const bathTubIcon = "assets/images/bath_tub_icon.png";
const bedIcon = "assets/images/bed_icon.png";
const locationIcon = "assets/images/location_icon.png";
const parkingIcon = "assets/images/parking_icon.png";
