import 'package:equatable/equatable.dart';

import '../models/student.dart';


abstract class CubitStates {}

class StudentinitialState extends CubitStates {
  @override
  List<Object?> get props => [];
}

class StudentWelcomeState extends CubitStates {
  @override
  List<Object?> get props => [];
}

class StudentDataLoadingState extends CubitStates {
  @override
  List<Object?> get props => [];
}

class StudentDataLoadedState extends CubitStates {
  final studentData;

  StudentDataLoadedState(this.studentData);
 
}

class StudentDetailState extends CubitStates {
  final StudentModel student;

  StudentDetailState(this.student);

  @override
  List<Object?> get props => [student];
}

class StudentDataErrorState extends CubitStates {
  
  @override
  List<Object?> get props => [];
}
