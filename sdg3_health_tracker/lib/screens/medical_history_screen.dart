import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class MedicalHistoryScreen extends StatefulWidget {
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
