mixin Loggable {
  void logAction(String action) {
    print("LOG: $action");
  }
}

class Student with Loggable {
  String name;

  Student(this.name);

  void study() {
    logAction("$name is studying.");
  }
}

class Book with Loggable {
  String title;

  Book(this.title);

  void openBook() {
    logAction("$title was opened.");
  }
}

void main() {
  Student student = Student("Waqas Muhammad");
  Book book = Book("Dart Programming");

  student.study();
  book.openBook();
}
