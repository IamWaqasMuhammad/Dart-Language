class StudentMarksAnalyzer {
  Map<String, int> courseMarks = {
    'CS101': 80,
    'CS102': 65,
    'CS103': 45,
    'CS104': 90,
    'CS105': 72,
  };

  int calculateTotal() {
    int total = 0;

    for (int mark in courseMarks.values) {
      total += mark;
    }

    return total;
  }

  double calculateAverage() {
    if (courseMarks.isEmpty) {
      throw Exception('No course marks available.');
    }

    return calculateTotal() / courseMarks.length;
  }

  int calculateHighest() {
    if (courseMarks.isEmpty) {
      throw Exception('Cannot find highest mark because no marks exist.');
    }

    int highest = courseMarks.values.first;

    for (int mark in courseMarks.values) {
      if (mark > highest) {
        highest = mark;
      }
    }

    return highest;
  }

  int calculateLowest() {
    if (courseMarks.isEmpty) {
      throw Exception('Cannot find lowest mark because no marks exist.');
    }

    int lowest = courseMarks.values.first;

    for (int mark in courseMarks.values) {
      if (mark < lowest) {
        lowest = mark;
      }
    }

    return lowest;
  }

  String checkResult(int mark) {
    if (mark >= 50) {
      return 'Pass';
    } else {
      return 'Fail';
    }
  }

  String calculateGrade(double average) {
    if (average >= 90) {
      return 'A';
    } else if (average >= 80) {
      return 'B';
    } else if (average >= 70) {
      return 'C';
    } else if (average >= 60) {
      return 'D';
    } else {
      return 'F';
    }
  }

  int countFailedCourses() {
    int failedCourses = 0;

    for (int mark in courseMarks.values) {
      if (mark < 50) {
        failedCourses++;
      }
    }

    return failedCourses;
  }

  void displayResult() {
    try {
      if (courseMarks.isEmpty) {
        throw Exception('No marks found for any course.');
      }

      int total = calculateTotal();
      double average = calculateAverage();
      int highest = calculateHighest();
      int lowest = calculateLowest();
      String grade = calculateGrade(average);
      int failedCourses = countFailedCourses();

      print('===== Student Marks Analyzer =====');

      for (var entry in courseMarks.entries) {
        print('${entry.key}: ${entry.value} - ${checkResult(entry.value)}');
      }

      print('\nTotal Marks: $total');
      print('Average Marks: ${average.toStringAsFixed(2)}');
      print('Highest Marks: $highest');
      print('Lowest Marks: $lowest');
      print('Overall Grade: $grade');
      print('Failed Courses: $failedCourses');
    } catch (e) {
      print('Error: $e');
    } finally {
      print('\nAnalysis completed.');
    }
  }
}
