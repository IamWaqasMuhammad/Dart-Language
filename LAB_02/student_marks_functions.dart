class StudentMarksFunctions {
  int calculus = 65;
  int appliedPhysics = 93;
  int statistics = 70;

  double calculatePercentage(int obtainedMarks, int totalMarks) {
    return (obtainedMarks / totalMarks) * 100;
  }

  String calculateGrade(double percentage) {
    if (percentage >= 90) {
      return 'A';
    } else if (percentage >= 80) {
      return 'B';
    } else if (percentage >= 70) {
      return 'C';
    } else if (percentage >= 60) {
      return 'D';
    } else {
      return 'F';
    }
  }

  void displayResult() {
    int obtainedMarks = calculus + appliedPhysics + statistics;
    int totalMarks = 300;

    double percentage = calculatePercentage(obtainedMarks, totalMarks);

    String grade = calculateGrade(percentage);

    print('Total Marks: $obtainedMarks');
    print('Percentage: $percentage%');
    print('Grade: $grade');
  }
}
