class Student {
  String name;
  String rollNumber;
  int semester;

  Student(this.name, this.rollNumber, this.semester);

  void introduce() {
    print("Name: $name");
    print("Roll Number: $rollNumber");
    print("Semester: $semester");
  }
}

void main() {
  Student student1 = Student("Waqas Muhammad", '24PWBCS1226', 5);
  Student student2 = Student("Ali Khan", '24PWBCS1226', 5);

  student1.introduce();
  print("");

  student2.introduce();
}
