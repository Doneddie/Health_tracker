import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sdg3_health_tracker/theme/app_theme.dart';
import 'package:sdg3_health_tracker/screens/home_screen.dart';


void main() {
  runApp(SDG3HealthTrackerApp());
}

class SDG3HealthTrackerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ActiveMind',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
