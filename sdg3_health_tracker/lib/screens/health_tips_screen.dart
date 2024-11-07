import 'package:flutter/material.dart';

class HealthTipsScreen extends StatelessWidget {
  // Sample list of health tips
  final List<String> healthTips = [
    "Stay hydrated by drinking at least 8 cups of water a day.",
    "Get at least 7-8 hours of sleep each night to maintain a healthy mind and body.",
    "Incorporate 30 minutes of physical activity into your daily routine.",
    "Eat a balanced diet that includes fruits, vegetables, whole grains, and lean proteins.",
    "Practice stress-relieving techniques like meditation, deep breathing, or yoga.",
    "Limit your intake of sugary drinks and snacks.",
    "Avoid smoking and limit alcohol consumption to promote long-term health.",
    "Schedule regular checkups with your healthcare provider.",
    "Wash your hands frequently to reduce the risk of infections.",
    "Keep a positive mindset and spend time with loved ones for emotional well-being.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Health Tips"),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: healthTips.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 4,
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
              child: ListTile(
                leading: Icon(Icons.health_and_safety, color: Colors.teal),
                title: Text(
                  healthTips[index],
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
