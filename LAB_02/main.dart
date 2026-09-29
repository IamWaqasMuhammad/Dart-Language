import 'collection_example.dart';
import 'student_info.dart';
import 'student_marks.dart';
import 'marks_list.dart';
import 'student_marks_analyzer.dart';
import 'student_marks_functions.dart';

void main() {
  StudentInfo studentInfo = StudentInfo();
  studentInfo.displayInfo();
  print('===============================================================');

  StudentMarks studentMarks = StudentMarks();
  studentMarks.displayResult();
  print('===============================================================');

  MarksList marksList = MarksList();
  marksList.displayMarksList();
  print('===============================================================');

  StudentMarksFunctions studentMarksFunctions = StudentMarksFunctions();
  studentMarksFunctions.displayResult();
  print('===============================================================');

  CollectionsExample collectionsExample = CollectionsExample();

  collectionsExample.addValues();

  collectionsExample.removeValues();

  collectionsExample.searchValues();

  collectionsExample.displayValues();
  print('====================================================');

  StudentMarksAnalyzer studentMarksAnalyzer = StudentMarksAnalyzer();
  studentMarksAnalyzer.displayResult();
}
