class StudentMarks {
  int calculus = 65;
  int appliedPhysics = 93;
  int statistics = 70;

  void displayResult() {
    int totalObtainMarks = calculus + appliedPhysics + statistics;
    int totalMarks = 300;
    double percentage = totalObtainMarks / totalMarks * 100;

    if (percentage >= 90 && percentage <= 100) {
      return print('Grade - A');
    } else if (percentage > 70 && percentage < 90) {
      return print('Grade - B');
    } else if (percentage >= 60 && percentage < 80) {
      return print('Grade - C');
    } else if (percentage >= 50 && percentage < 60) {
      return print('Grade - D');
    } else {
      return print('Grade - F');
    }
  }
}
