import 'dart:async';


// Task 7.2 — ro'yxatdan element topamiz, bo'lmasa muloyim ogohlantiramiz
void printElementAt(List<dynamic> list, int index) {
  try {
    print("Element at $index: ${list[index]}");
  } on RangeError {
    print("Xato: Noto'g'ri indeks (ko'zoynakni taqing)!");
  }
}


// Task 7.3 — yoshni parslash; 'abc' bo'lsa, hazil bilan tushuntiramiz
void parseUserAge(String input) {
  try {
    final int age = int.parse(input);
    print("User age is $age");
  } on FormatException {
    print("Xato: Noto'g'ri raqam formati (raqam kiriting, harf emas)!");
  }
}


// Task 7.4 — o'zimizning chiroyli istisnomamiz
class InvalidInputException implements Exception {
  final String message;
  InvalidInputException(this.message);

  @override
  String toString() => "InvalidInputException: $message";
}

void processText(String text) {
  if (text.trim().isEmpty) {
    throw InvalidInputException("Matn bo'sh bo'la olmaydi (hech bo'lmasa 'salom' yozing)!");
  }
  print("Processing text: $text");
}


// Task 7.5 — ma'lumotlar bazasi bilan suhbat
void readDatabase() {
  try {
    print("Bazadan o'qilyapti... (admin parolni yana o'zgartirdi shekilli)");
    throw Exception("Database read error");
  } catch (e) {
    print("Xato ushlanib olindi: $e");
  } finally {
    print("Baza ulanishi yopildi (endi choy vaqti)");
  }
}

Future<void> main() async {
  print("=== 7.2 Task 2 — indekslar sarguzashti ===");
  printElementAt([10, 20, 30], 1);
  printElementAt([10, 20, 30], 5);

  print("\n=== 7.3 Task 3 — raqammi yoki harfmi? ===");
  parseUserAge("25");
  parseUserAge("abc");

  print("\n=== 7.4 Task 4 — istisnolar festivali ===");
  try {
    processText("");
  } on InvalidInputException catch (e) {
    print("Maxsus istisno boshqarildi: $e");
  }

  print("\n=== 7.5 Task 5 — bazaga sayohat ===");
  readDatabase();
}
