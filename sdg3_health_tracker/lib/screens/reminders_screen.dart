import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:sdg3_health_tracker/utils/date_utils.dart';
import 'package:sdg3_health_tracker/utils/error_utils.dart';
import 'package:sdg3_health_tracker/utils/pref_utils.dart';
import 'package:sdg3_health_tracker/models/reminder.dart';
import 'package:sdg3_health_tracker/services/reminder_service.dart';
import 'package:sdg3_health_tracker/services/notification_service.dart';



class RemindersScreen extends StatefulWidget {
  final User user; // Accepting the user object

  RemindersScreen({required this.user});
  @override
  _RemindersScreenState createState() => _RemindersScreenState();
}

class _RemindersScreenState extends State<RemindersScreen> {
  // Set reminders and manage them using flutter_local_notifications
}

final reminderService = ReminderService();

// Schedule a reminder at a specific time
reminderService.scheduleReminder(
  title: "Take your Aspirin",
  body: "Don't forget to take your 100mg Aspirin.",
  scheduledTime: DateTime.now().add(Duration(hours: 2)),
);

final notificationService = NotificationService();
notificationService.showNotification(
  title: "Reminder",
  body: "It's time to take your medication.",
);