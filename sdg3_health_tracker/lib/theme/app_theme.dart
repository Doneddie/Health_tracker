import 'package:flutter/material.dart';

// Define primary and secondary colors for the app
const Color primaryColor = Color(0xFF4CAF50);  // Green
const Color secondaryColor = Color(0xFF1976D2); // Blue
const Color accentColor = Color(0xFFFFC107);  // Amber
const Color backgroundColor = Color(0xFFF5F5F5); // Light grey background
const Color whiteColor = Colors.white;
const Color greyColor = Colors.grey;

// Define Text Styles
final TextStyle headingTextStyle = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.bold,
  color: primaryColor,
);

final TextStyle subheadingTextStyle = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w600,
  color: secondaryColor,
);

final TextStyle bodyTextStyle = TextStyle(
  fontSize: 16,
  color: greyColor,
);

final TextStyle buttonTextStyle = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.bold,
  color: whiteColor,
);

// Define input decoration style
InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
  filled: true,
  fillColor: Colors.white,
  border: OutlineInputBorder(
    borderSide: BorderSide(color: greyColor),
    borderRadius: BorderRadius.circular(12),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: primaryColor, width: 2),
    borderRadius: BorderRadius.circular(12),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: greyColor, width: 1),
    borderRadius: BorderRadius.circular(12),
  ),
  labelStyle: TextStyle(
    color: greyColor,
 
