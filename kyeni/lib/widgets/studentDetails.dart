import 'package:flutter/material.dart';

import '../models/student.dart';


class StudentDetails extends StatelessWidget {
  StudentModel student;
  StudentDetails({
    required this.student,
  });

  details(String data) {
    return Text(data);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Personal Details",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                ),
                details("Name: ${student.names}"),
                details("Course: ${student.course.courseName}"),
                details("Reg Number: ${student.regNumber}"),
                details("ID Number: ${student.idnumber}"),
              ],
            ),
          ),
        ),
        const SizedBox(height: 10),
        Card(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Course Details",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                ),
                details("Name: ${student.course.courseName}"),
                details(
                    "Year of Study: ${student.course.yearOfStudy}"),
                details("Course Code: ${student.course.courseCode}"),
                details("Number of Students: ${student.course.numberOfStudents}"),
                details(
                    "Department: ${student.course.department.departmentName}"),
              ],
            ),
          ),
        )
      ],
    );
  }
}
