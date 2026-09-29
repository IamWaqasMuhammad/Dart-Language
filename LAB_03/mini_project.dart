abstract class Printable {
  void summary();
}

mixin Loggable {
  void logAction(String action) {
    print("LOG: $action");
  }
}

class Book implements Printable {
  final String title;
  final String author;

  bool _isBorrowed = false;

  Book(this.title, this.author);

  bool get isBorrowed => _isBorrowed;

  bool borrowBook() {
    if (_isBorrowed) {
      return false;
    }

    _isBorrowed = true;
    return true;
  }

  bool returnBook() {
    if (!_isBorrowed) {
      return false;
    }

    _isBorrowed = false;
    return true;
  }

  @override
  void summary() {
    print(
      "$title by $author - "
      "${_isBorrowed ? "Borrowed" : "Available"}",
    );
  }
}

class Member with Loggable implements Printable {
  final String name;
  final int memberId;

  final List<Book> _borrowedBooks = [];

  Member(this.name, this.memberId);

  List<Book> get borrowedBooks => List.unmodifiable(_borrowedBooks);

  void borrowBook(Book book) {
    if (book.isBorrowed) {
      print("$name cannot borrow '${book.title}'. Book is already borrowed.");
      return;
    }

    if (book.borrowBook()) {
      _borrowedBooks.add(book);
      logAction("$name borrowed '${book.title}'.");
    }
  }

  void returnBook(Book book) {
    if (!_borrowedBooks.contains(book)) {
      print("$name did not borrow '${book.title}'.");
      return;
    }

    if (book.returnBook()) {
      _borrowedBooks.remove(book);
      logAction("$name returned '${book.title}'.");
    }
  }

  @override
  void summary() {
    print("Member: $name | ID: $memberId");

    if (_borrowedBooks.isEmpty) {
      print("Borrowed Books: None");
    } else {
      print("Borrowed Books:");

      for (Book book in _borrowedBooks) {
        print("- ${book.title}");
      }
    }
  }
}

class Library with Loggable implements Printable {
  final String name;

  final List<Book> _books = [];
  final List<Member> _members = [];

  Library(this.name);

  List<Book> get books => List.unmodifiable(_books);
  List<Member> get members => List.unmodifiable(_members);

  void addBook(Book book) {
    _books.add(book);
    logAction("Book '${book.title}' added to library.");
  }

  void addMember(Member member) {
    _members.add(member);
    logAction("Member '${member.name}' added to library.");
  }

  void showBooks() {
    print("\n--- Library Books ---");

    for (Book book in _books) {
      book.summary();
    }
  }

  void showMembers() {
    print("\n--- Library Members ---");

    for (Member member in _members) {
      member.summary();
    }
  }

  @override
  void summary() {
    print("\n===== Library Summary =====");
    print("Library: $name");
    print("Total Books: ${_books.length}");
    print("Total Members: ${_members.length}");

    showBooks();
    showMembers();
  }
}

Future<String> loadLibraryRecord() async {
  await Future.delayed(const Duration(seconds: 2));

  return "Library record loaded successfully.";
}

Future<void> main() async {
  Library library = Library("UET Library");

  Book book1 = Book("Dart Programming", "Sir Moeen Amad");

  Book book2 = Book("Object Oriented Programming", "Tutorials Point");

  Book book3 = Book("Flutter Development", "Sir Asif Taj");

  Member member1 = Member("Waqas Muhammad", 1226);

  Member member2 = Member("Ahmed", 1227);

  library.addBook(book1);
  library.addBook(book2);
  library.addBook(book3);

  library.addMember(member1);
  library.addMember(member2);

  library.showBooks();

  print("\n--- Borrowing Books ---");

  member1.borrowBook(book1);

  // Invalid borrowing
  member2.borrowBook(book1);

  member2.borrowBook(book2);

  library.showBooks();

  print("\n--- Returning Book ---");

  member1.returnBook(book1);

  // Now another member can borrow it
  member2.borrowBook(book1);

  library.showMembers();

  print("\n--- Final Library Status ---");

  library.summary();

  print("\n--- Asynchronous Operation ---");

  print("Loading library record...");

  String result = await loadLibraryRecord();

  print(result);
}
