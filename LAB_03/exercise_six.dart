Future<String> loadRecord() async {
  await Future.delayed(const Duration(seconds: 2));
  return "Student record loaded successfully.";
}

Future<void> main() async {
  print("Loading record...");

  String result = await loadRecord();

  print(result);
  print("Loading completed.");
}
