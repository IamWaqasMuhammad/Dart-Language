class CollectionsExample {
  // List of courses
  List<String> courses = ['Dart', 'Flutter', 'Database'];

  // Set of programming languages
  Set<String> programmingLanguages = {'Dart', 'Java', 'Python'};

  // Map of course names and marks
  Map<String, int> courseMarks = {'statistics': 80, 'calculus': 75, 'physics': 90};

  void addValues() {
    // Add to List
    courses.add('Software Engineering');

    // Add to Set
    programmingLanguages.add('C++');

    // Add to Map
    courseMarks['Islamiat'] = 85;
  }

  void removeValues() {
    // Remove from List
    courses.remove('Database');

    // Remove from Set
    programmingLanguages.remove('Java');

    // Remove from Map
    courseMarks.remove('CS103');
  }

  void searchValues() {
    // Search in List
    print('Flutter exists: ${courses.contains('Flutter')}');

    // Search in Set
    print('Python exists: ${programmingLanguages.contains('Python')}');

    // Search in Map
    print('Islamiat exists: ${courseMarks.containsKey('Islamiat')}');
  }

  void displayValues() {
    print('\nCourses:');

    for (String course in courses) {
      print(course);
    }

    print('\nProgramming Languages:');

    for (String language in programmingLanguages) {
      print(language);
    }

    print('\nCourse Marks:');

    courseMarks.forEach((code, marks) {
      print('$code: $marks');
    });
  }
}
