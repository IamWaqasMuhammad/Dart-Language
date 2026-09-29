abstract class Printable {
  void summary();
}

class Student implements Printable {
  String name;
  int rollNumber;

  Student(this.name, this.rollNumber);

  @override
  void summary() {
    print("Student: $name | Roll Number: $rollNumber");
  }
}

class Book implements Printable {
  String title;
  String author;

  Book(this.title, this.author);

  @override
  void summary() {
    print("Book: $title | Author: $author");
  }
}

void main() {
  List<Printable> items = [
    Student("Waqas Muhammad", 1226),
    Book("Dart Programming", "Moeen Ahmad"),
  ];

  for (Printable item in items) {
    item.summary();
  }
}
