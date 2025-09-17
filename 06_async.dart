// ASYNC — kutamiz, kutamiz... keyin hammasi tayyor bo'ladi 😄
import 'dart:async';


// Task 6.2 
Future<String> generateReport() {
  return Future.delayed(Duration(seconds: 1), () => "Hisobot tayyor! (printerga qog'oz soling)");
}


// Task 6.3 
Future<String> generateReportAsync() async {
  await Future.delayed(Duration(seconds: 1));
  return "Hisobot tayyor!";
}


// Task 6.4 
Future<int> fetchUserId() async {
  await Future.delayed(Duration(seconds: 1));
  return 123;
}

Future<String> fetchUserDetails(int userId) async {
  await Future.delayed(Duration(seconds: 1));
  return "Foydalanuvchi ismi (ID: $userId) — Islomjon";
}


// Task 6.5 
Future<String> fetchConfiguration() async {
  await Future.delayed(Duration(seconds: 1));
  return "Sozlamalar yuklandi (kimdir keshni tozaladi)";
}

Future<String> loadResources() async {
  await Future.delayed(Duration(seconds: 2));
  return "Resurslar yuklandi (Wi‑Fi yaxshi ishladi)";
}

Future<void> main() async {
  // Task 2 — va'dalarga ishoning 😉
  generateReport().then((result) {
    print(result);
  });


  // Task 3 — async/await bilan choy damlaymiz
  String report = await generateReportAsync();
  print(report);

  // Task 4 — ketma-ket so'rovlar
  int userId = await fetchUserId();
  String userDetails = await fetchUserDetails(userId);
  print(userDetails);

  // Task 5 — parallel ishlar: bir qo'lda lag'mon, bir qo'lda somsa
  await Future.wait([fetchConfiguration(), loadResources()]);
  print("Tizim tayyor!");
}
