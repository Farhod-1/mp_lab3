import 'dart:async';


// Task 7.2
void printElementAt(List<dynamic> list, int index) {
  try {
    print("Element at $index: ${list[index]}");
  } on RangeError {
    print("Error: Invalid index.");
  }
}


// Task 7.3
void parseUserAge(String input) {
  try {
    final int age = int.parse(input);
    print("User age is $age");
  } on FormatException {
    print("Error: Invalid number format.");
  }
}


// Task 7.4
class InvalidInputException implements Exception {
  final String message;
  InvalidInputException(this.message);

  @override
  String toString() => "InvalidInputException: $message";
}

void processText(String text) {
  if (text.trim().isEmpty) {
    throw InvalidInputException("Input string cannot be empty.");
  }
  print("Processing text: $text");
}


// Task 7.5
void readDatabase() {
  try {
    print("Reading data from database...");
    throw Exception("Database read error");
  } catch (e) {
    print("Caught error: $e");
  } finally {
    print("Database connection closed.");
  }
}

Future<void> main() async {
  print("=== 7.2 Task 2 ===");
  printElementAt([10, 20, 30], 1);
  printElementAt([10, 20, 30], 5);

  print("\n=== 7.3 Task 3 ===");
  parseUserAge("25");
  parseUserAge("abc");

  print("\n=== 7.4 Task 4 ===");
  try {
    processText("");
  } on InvalidInputException catch (e) {
    print("Handled custom exception: $e");
  }

  print("\n=== 7.5 Task 5 ===");
  readDatabase();
}
