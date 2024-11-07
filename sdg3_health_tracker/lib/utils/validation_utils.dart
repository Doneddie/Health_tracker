class ValidationUtils {
  // Validate email address format
  static bool isValidEmail(String email) {
    const String pattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
    final RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(email);
  }

  // Validate if the string is a valid phone number (basic)
  static bool isValidPhoneNumber(String phone) {
    const String pattern = r'^\+?[0-9]{10,15}$';
    final RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(phone);
  }

  // Validate if a string is a valid number (e.g., for dosage, weight, etc.)
  static bool isValidNumber(String input) {
    const String pattern = r'^[0-9]+(\.[0-9]{1,2})?$';
    final RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(input);
  }

  // Validate that a string is not empty
  static bool isNotEmpty(String input) {
    return input.isNotEmpty;
  }

  // Validate if a date is in the future
  static bool isValidFutureDate(DateTime date) {
    return date.isAfter(DateTime.now());
  }
}
