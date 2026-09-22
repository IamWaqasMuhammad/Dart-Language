class MarksList {
  List<int> marksList = [40, 50, 66, 74, 82, 78, 99, 100];

  void displayMarksList() {
    int passingCount = 0;

    for (int mark in marksList) {
      print(mark);

      if (mark >= 50) {
        passingCount++;
      }
    }

    print('Passing Marks Count: $passingCount');
  }
}