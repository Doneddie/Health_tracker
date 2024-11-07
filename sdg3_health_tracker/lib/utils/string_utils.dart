class StringUtils {
  // Capitalize the first letter of each word in a sentence
  static String capitalizeWords(String sentence) {
    return sentence.split(' ').map((word) {
      return word.isEmpty
          ? ''
          : word[0].toUpperCase() + word.substring(1).toLowerCase();
    }).join(' ');
  }

  // Trim white spaces from a string
  static String trimSpaces(String input) {
    return input.trim();
  }

  // Check if a string contains only alphabetic characters
  static bool containsOnlyAlphabets(String input) {
    final RegExp regExp = RegExp(r'^[a-zA-Z]+$');
    return regExp.hasMatch(input);
  }
}
