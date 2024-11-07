class Reminder {
  final String id;
  final String title;
  final DateTime reminderTime;
  final String description;
  final bool isActive;

  Reminder({
    required this.id,
    required this.title,
    required this.reminderTime,
    required this.description,
    this.isActive = true,
  });

  factory Reminder.fromJson(Map<String, dynamic> json) {
    return Reminder(
      id: json['id'],
      title: json['title'],
      reminderTime: DateTime.parse(json['reminderTime']),
      description: json['description'],
      isActive: json['isActive'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'reminderTime': reminderTime.toIso8601String(),
      'description': description,
      'isActive': isActive,
    };
  }
}
