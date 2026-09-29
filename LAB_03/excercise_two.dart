class StudentMarks {
  final List<int> _marks = [];

  void addMark(int mark) {
    if (mark >= 0 && mark <= 100) {
      _marks.add(mark);
      print("$mark added successfully.");
    } else {
      print("Invalid mark: $mark");
    }
  }

  double get average {
    if (_marks.isEmpty) {
      return 0;
    }

    int total = _marks.reduce((a, b) => a + b);
    return total / _marks.length;
  }
}

void main() {
  StudentMarks student = StudentMarks();

  student.addMark(65);
  student.addMark(93);
  student.addMark(70);
  student.addMark(110);

  print("Average Marks: ${student.average}");
}
