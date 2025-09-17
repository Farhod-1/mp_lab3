// ASYNC
import 'dart:async';


// Task 6.2 
Future<String> generateReport() {
  return Future.delayed(Duration(seconds: 1), () => "Report generated!");
}


// Task 6.3 
Future<String> generateReportAsync() async {
  await Future.delayed(Duration(seconds: 1));
  return "Report generated!";
}


// Task 6.4 
Future<int> fetchUserId() async {
  await Future.delayed(Duration(seconds: 1));
  return 123;
}

Future<String> fetchUserDetails(int userId) async {
  await Future.delayed(Duration(seconds: 1));
  return "User Name for ID $userId";
}


// Task 6.5 
Future<String> fetchConfiguration() async {
  await Future.delayed(Duration(seconds: 1));
  return "Configuration loaded";
}

Future<String> loadResources() async {
  await Future.delayed(Duration(seconds: 2));
  return "Resources loaded";
}

Future<void> main() async {
  // Task 2
  generateReport().then((result) {
    print(result);
  });


  // Task 3
  String report = await generateReportAsync();
  print(report);

  // Task 4
  int userId = await fetchUserId();
  String userDetails = await fetchUserDetails(userId);
  print(userDetails);

  // Task 5
  await Future.wait([fetchConfiguration(), loadResources()]);
  print("System Ready");
}
