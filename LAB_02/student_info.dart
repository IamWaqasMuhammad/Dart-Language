class StudentInfo {
  final String studentName = 'Waqas Muhammad';
  final int rollNumber = 1226;
  final int semester = 5;
  final double cgpa = 4.00;
  final bool active = true;

  void displayInfo() {
    print('My name is: $studentName');
    print('My Roll Number is: $rollNumber');
    print('I am in: $semester Semester');
    print('My CGPA is: $cgpa');
    print('Active Status: $active');
  }
}

