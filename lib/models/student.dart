
import 'dart:convert';

StudentModel studentModelFromJson(String str) => StudentModel.fromJson(json.decode(str));

String studentModelToJson(StudentModel data) => json.encode(data.toJson());

class StudentModel {
    StudentModel({
      required this.regNumber,
      required this.names,
      required this.idnumber,
      required this.email,
      required this.course,
      required this.department,
      required this.gender,
      required this.avatar,
    });

    String regNumber;
    String names;
    int idnumber;
    String email;
    Course course;
    String department;
    String gender;
    String avatar;

    factory StudentModel.fromJson(Map<String, dynamic> json) => StudentModel(
        regNumber: json["regNumber"],
        names: json["names"],
        idnumber: json["idnumber"],
        email: json["email"],
        course: Course.fromJson(json["course"]),
        department: json["department"],
        gender: json["gender"],
        avatar: json["avatar"],
    );

    Map<String, dynamic> toJson() => {
        "regNumber": regNumber,
        "names": names,
        "idnumber": idnumber,
        "email": email,
        "course": course.toJson(),
        "department": department,
        "gender": gender,
        "avatar": avatar,
    };
}

class Course {
    Course({
      required this.id,
      required this.courseName,
      required this.yearOfStudy,
      required this.numberOfStudents,
      required this.courseCode,
      required this.department,
    });

    int id;
    String courseName;
    int yearOfStudy;
    int numberOfStudents;
    String courseCode;
    Department department;

    factory Course.fromJson(Map<String, dynamic> json) => Course(
        id: json["id"],
        courseName: json["courseName"],
        yearOfStudy: json["yearOfStudy"],
        numberOfStudents: json["numberOfStudents"],
        courseCode: json["courseCode"],
        department: Department.fromJson(json["department"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "courseName": courseName,
        "yearOfStudy": yearOfStudy,
        "numberOfStudents": numberOfStudents,
        "courseCode": courseCode,
        "department": department.toJson(),
    };
}

class Department {
    Department({
       required this.id,
       required this.departmentName,
       required this.school,
    });

    int id;
    String departmentName;
    int school;

    factory Department.fromJson(Map<String, dynamic> json) => Department(
        id: json["id"],
        departmentName: json["departmentName"],
        school: json["school"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "departmentName": departmentName,
        "school": school,
    };
}