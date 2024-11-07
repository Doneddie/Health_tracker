import 'package:flutter/material.dart';
import 'medical_history_screen.dart';
import 'medication_screen.dart';
import 'reminders_screen.dart';
import 'health_tips_screen.dart';
import 'checkup_screen.dart';
import 'privacy_policy_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Health Tracker'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(8.0),
        children: <Widget>[
          _buildGridItem(context, Icons.history, "Medical History", MedicalHistoryScreen()),
          _buildGridItem(context, Icons.medication, "Medications", MedicationScreen()),
          _buildGridItem(context, Icons.alarm, "Reminders", RemindersScreen()),
          _buildGridItem(context, Icons.health_and_safety, "Health Tips", HealthTipsScreen()),
          _buildGridItem(context, Icons.favorite, "Checkups", CheckupScreen()),
          _buildGridItem(context, Icons.privacy_tip, "Privacy Policy", PrivacyPolicyScreen()),
        ],
      ),
    );
  }

  Widget _buildGridItem(BuildContext context, IconData icon, String title, Widget screen) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => screen),
      ),
      child: Card(
        elevation: 4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: Colors.teal),
            SizedBox(height: 10),
            Text(title),
          ],
        ),
      ),
    );
  }
}
