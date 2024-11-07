import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;


class CheckupScreen extends StatefulWidget {
  @override
  _CheckupScreenState createState() => _CheckupScreenState();
}

class _CheckupScreenState extends State<CheckupScreen> {
  // Placeholder values for health metrics
  double heartRate = 72;          // in beats per minute
  double bloodPressure = 120/80;  // in mmHg (systolic/diastolic)
  double bloodSugar = 90;         // in mg/dL
  double pulseRate = 75;          // in beats per minute

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Health Checkups"),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 10),
            _buildMetricCard(
              context,
              "Heart Rate",
              "$heartRate bpm",
              Icons.favorite,
              Colors.red,
            ),
            SizedBox(height: 10),
            _buildMetricCard(
              context,
              "Blood Pressure",
              "120/80 mmHg",  // Placeholder
              Icons.healing,
              Colors.blue,
            ),
            SizedBox(height: 10),
            _buildMetricCard(
              context,
              "Blood Sugar",
              "$bloodSugar mg/dL",
              Icons.bloodtype,
              Colors.orange,
            ),
            SizedBox(height: 10),
            _buildMetricCard(
              context,
              "Pulse Rate",
              "$pulseRate bpm",
              Icons.pulse,
              Colors.green,
            ),
            Spacer(),
            ElevatedButton(
              onPressed: _simulateCheckup,
              child: Text("Simulate Checkup"),
              style: ElevatedButton.styleFrom(
                primary: Colors.teal,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to build each health metric card
  Widget _buildMetricCard(BuildContext context, String title, String value, IconData icon, Color color) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        leading: Icon(icon, size: 40, color: color),
        title: Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          value,
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }

  // Method to simulate new health metric values
  void _simulateCheckup() {
    setState(() {
      // Generate random values to simulate new checkup readings
      heartRate = 60 + (20 * _randomValue());
      bloodPressure = 110 + (30 * _randomValue()) / 100;
      bloodSugar = 80 + (40 * _randomValue());
      pulseRate = 60 + (30 * _randomValue());
    });
  }

  // Helper function to generate random values between 0.8 and 1.2
  double _randomValue() {
    return 0.8 + (0.4 * (new DateTime.now().millisecond % 100) / 100);
  }
}
