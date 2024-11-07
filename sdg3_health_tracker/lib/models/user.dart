class User {
  final String id;
  final String name;
  final String email;
  final DateTime dateOfBirth;
  final String gender;
  List<MedicalHistory> medicalHistory;
  List<Medication> medications;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.dateOfBirth,
    required this.gender,
    this.medicalHistory = const [],
    this.medications = const [],
  });

  // You may want to add methods for serialization, etc.
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      dateOfBirth: DateTime.parse(json['dateOfBirth']),
      gender: json['gender'],
      medicalHistory: (json['medicalHistory'] as List).map((i) => MedicalHistory.fromJson(i)).toList(),
      medications: (json['medications'] as List).map((i) => Medication.fromJson(i)).toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'dateOfBirth': dateOfBirth.toIso8601String(),
      'gender': gender,
      'medicalHistory': medicalHistory.map((m) => m.toJson()).toList(),
      'medications': medications.map((m) => m.toJson()).toList(),
    };
  }
}
