class HealthCheckup {
  final String id;
  final DateTime date;
  final String doctorName;
  final String notes;

  HealthCheckup({
    required this.id,
    required this.date,
    required this.doctorName,
    required this.notes,
  });

  factory HealthCheckup.fromJson(Map<String, dynamic> json) {
    return HealthCheckup(
      id: json['id'],
      date: DateTime.parse(json['date']),
      doctorName: json['doctorName'],
      notes: json['notes'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'date': date.toIso8601String(),
      'doctorName': doctorName,
      'notes': notes,
    };
  }
}
