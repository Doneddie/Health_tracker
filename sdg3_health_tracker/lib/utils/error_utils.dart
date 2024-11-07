class ErrorUtils {
  // Handle general errors and return appropriate error messages
  static String handleError(Exception error) {
    if (error is FormatException) {
      return "Invalid format, please check your input.";
    } else if (error is TimeoutException) {
      return "The request timed out, please try again later.";
    } else {
      return "An unexpected error occurred: ${error.toString()}";
    }
  }
}
