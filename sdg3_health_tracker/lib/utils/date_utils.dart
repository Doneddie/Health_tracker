import 'package:intl/intl.dart';

class DateUtils {
  // Format for displaying date as "MM/dd/yyyy"
  static String formatDate(DateTime date) {
    final DateFormat formatter = DateFormat('MM/dd/yyyy');
    return formatter.format(date);
  }

  // Format time as "hh:mm a" (e.g., "02:30 PM")
  static String formatTime(DateTime time) {
    final DateFormat formatter = DateFormat('hh:mm a');
    return formatter.format(time);
  }

  // Convert a string to a DateTime object, if possible
  static DateTime? parseDate(String dateStr) {
    try {
      return DateFormat('MM/dd/yyyy').parse(dateStr);
    } catch (e) {
      return null; // Return null if parsing fails
    }
  }

  // Check if the given date is in the past
  static bool isDateInPast(DateTime date) {
    return date.isBefore(DateTime.now());
  }

  // Check if the given date is today
  static bool isToday(DateTime date) {
    return DateFormat('yyyy-MM-dd').format(date) == DateFormat('yyyy-MM-dd').format(DateTime.now());
  }
}
