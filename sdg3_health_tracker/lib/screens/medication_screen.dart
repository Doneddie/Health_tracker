import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sdg3_health_tracker/utils/date_utils.dart';
import 'package:sdg3_health_tracker/utils/error_utils.dart';
import 'package:sdg3_health_tracker/utils/pref_utils.dart';
import 'package:sdg3_health_tracker/utils/string_utils.dart';
import 'package:sdg3_health_tracker/models/medication.dart';
import 'package:sdg3_health_tracker/services/reminder_service.dart';
import 'package:sdg3_health_tracker/services/database_service.dart';



class MedicationScreen extends StatefulWidget {
  final User user; // Accepting the user object

  MedicationScreen({required this.user});
   // Example list of medications
  final List<Medication> medications = [
    Medication(
      name: "Aspirin",
      dosage: "100mg",
      startDate: DateTime.now(),
      endDate: DateTime.now().add(Duration(days: 7)),
    ),
    Medication(
      name: "Vitamin C",
      dosage: "500mg",
      startDate: DateTime.now(),
      endDate: DateTime.now().add(Duration(days: 30)),
    ),
  ];
  @override
  _MedicationScreenState createState() => _MedicationScreenState();
}

class _MedicationScreenState extends State<MedicationScreen> {
  // Medication list and CRUD functionality
}
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Medications"),
      ),
      body: ListView.builder(
        itemCount: medications.length,
        itemBuilder: (context, index) {
          final medication = medications[index];
          return ListTile(
            title: Text(medication.name),
            subtitle: Text('Dosage: ${medication.dosage}'),
            trailing: Text(
              'From: ${medication.startDate.toLocal()} To: ${medication.endDate.toLocal()}',
              style: TextStyle(fontSize: 12),
            ),
          );
        },
      ),
    );
  }

final reminderService = ReminderService();

// Schedule a reminder at a specific time
reminderService.scheduleReminder(
  title: "Take your Aspirin",
  body: "Don't forget to take your 100mg Aspirin.",
  scheduledTime: DateTime.now().add(Duration(hours: 2)),
);

final databaseService = DatabaseService();

// Add a new medication
Medication newMedication = Medication(name: "Aspirin", dosage: "100mg");
databaseService.addMedication(newMedication);

// Retrieve all medications
List<Medication> medications = databaseService.getAllMedications();