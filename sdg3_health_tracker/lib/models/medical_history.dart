class MedicalHistory {
  final String id;
  final String condition;
  final DateTime diagnosisDate;
  final String description;

  MedicalHistory({
    required this.id,
    required this.condition,
    required this.diagnosisDate,
    required this.description,
  });

  factory MedicalHistory.fromJson(Map<String, dynamic> json) {
    return MedicalHistory(
      id: json['id'],
      condition: json['condition'],
      diagnosisDate: DateTime.parse(json['diagnosisDate']),
      description: json['description'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'condition': condition,
      'diagnosisDate': diagnosisDate.toIso8601String(),
      'description': description,
    };
  }
}
