

import 'package:overall_practice/Models/listview_model_class.dart';

class StoreData {
  static List<StudentModel> getAllStudents() {
    var studentList = <StudentModel>[];
    var std1 =
    StudentModel(rolNumber: 01, name: 'Khan', fName: 'Jan', grade: 'A');
    var std2 = StudentModel(
        rolNumber: 02, name: 'David', fName: 'Berlin', grade: 'A+');
    var std3 = StudentModel(
        rolNumber: 03, name: 'Maxwell', fName: 'Ghulam', grade: 'A');
    var std4 = StudentModel(
        rolNumber: 04, name: 'Asif', fName: 'Sher', grade: 'A+');
    var std5 = StudentModel(
        rolNumber: 05, name: 'Asif Ahmad', fName: 'Sher Ahmad', grade: 'A');
    var std6 = StudentModel(rolNumber: 10, name: 'NASEER', fName: 'JAN', grade: 'A+');

    studentList.add(std6);
    studentList.add(std1);
    studentList.add(std2);
    studentList.add(std3);
    studentList.add(std4);
    studentList.add(std5);
    studentList.add(std1);
    studentList.add(std2);
    studentList.add(std3);
    studentList.add(std4);
    studentList.add(std5);
    studentList.add(std5);
    return studentList;
  }
}