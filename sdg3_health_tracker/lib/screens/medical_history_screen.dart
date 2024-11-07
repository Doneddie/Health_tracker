import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sdg3_health_tracker/utils/date_utils.dart';
import 'package:sdg3_health_tracker/utils/error_utils.dart';
import 'package:sdg3_health_tracker/utils/pref_utils.dart';
import 'package:sdg3_health_tracker/models/medical_history.dart';



class MedicalHistoryScreen extends StatefulWidget {
  final User user; // Accepting the user object

  MedicalHistoryScreen({required this.user});
  @override
  _MedicalHistoryScreenState createState() => _MedicalHistoryScreenState();
}

class _MedicalHistoryScreenState extends State<MedicalHistoryScreen> {
  List<String> medicalHistory = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Medical History")),
      body: ListView.builder(
        itemCount: medicalHistory.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(medicalHistory[index]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addNewRecord,
        child: Icon(Icons.add),
      ),
    );
  }

  void _addNewRecord() {
    // Display a dialog to add a new medical history record
  }
}
