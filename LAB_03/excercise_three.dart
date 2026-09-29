class Person {
  String name;

  Person(this.name);

  void describe() {
    print("This is a person named $name.");
  }
}

class Student extends Person {
  int rollNumber;

  Student(String name, this.rollNumber) : super(name);

  @override
  void describe() {
    print("Student Name: $name");
    print("Roll Number: $rollNumber");
  }
}

void main() {
  Student student = Student("Waqas Muhammad", 1226);

  student.describe();
}
