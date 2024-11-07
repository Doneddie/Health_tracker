import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:sdg3_health_tracker/models/medication.dart';

class DatabaseService {
  late Box _medicationBox;

  // Initialize Hive and open boxes
  Future<void> init() async {
    final appDocumentDir = await getApplicationDocumentsDirectory();
    Hive.init(appDocumentDir.path);
    _medicationBox = await Hive.openBox('medications');
  }

  // Save a medication item to the database
  Future<void> addMedication(Medication medication) async {
    await _medicationBox.add(medication);
  }

  // Get all medications from the database
  List<Medication> getAllMedications() {
    return _medicationBox.values.toList().cast<Medication>();
  }

  // Delete a medication from the database
  Future<void> deleteMedication(int index) async {
    await _medicationBox.deleteAt(index);
  }

  // Close the database box
  Future<void> close() async {
    await _medicationBox.close();
  }
}
